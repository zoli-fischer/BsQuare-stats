<?php 

/**
 * BsQuare helper functions / classes
 *
 * @package bsquare
 * @link    todo: add url
 * @author  Zotlan Fischer <zoli_fischer@yahoo.com>
 * @license http://opensource.org/licenses/gpl-license.php GNU Public License
 */

//create minimum int constant
if ( !defined('PHP_INT_MIN')) 
	define('PHP_INT_MIN',-1 * PHP_INT_MAX);

/**
* Create url to menu
*/
function get_menu_url( $index ){
	global $BS_MAIN_MENU, $o3;
	$path = $o3->lang->_($BS_MAIN_MENU[$index]['language-index'].'-seo');
	return BS_URL.( $path != '' ? '/'.$path : '' );
}

/*
* Get cpr data
*/
function check_cpr( $cpr ) {
	$ch = curl_init();

	curl_setopt($ch, CURLOPT_URL, "http://cpr-validering.dk/api/validate");
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
	curl_setopt($ch, CURLOPT_HEADER, FALSE);
	curl_setopt($ch, CURLOPT_POST, TRUE);
	curl_setopt($ch, CURLOPT_POSTFIELDS, "{
	  \"cpr\": \"".( str_replace( '-', '', $cpr ) )."\"
	}");

	curl_setopt($ch, CURLOPT_HTTPHEADER, array(
	  "Content-Type: application/json"
	));

	$response = curl_exec($ch);
	curl_close($ch);

	return $response;
}

/*
* Is valid cpr
*/
function is_cpr_valid( $cpr ) {
	$response = json_decode( check_cpr( $cpr ), true );
	if ( is_array($response) && $response['person'] && $response['person']['valid'] && $response['person']['valid'] == 1) {
		return array(
				'valid' => $response['person']['valid'],
				'gender' => $response['person']['sex'] == 'male' ? 0 : 1,

			);
	}
	return false;
}

/*
* Insert api call
*/
function store_api_call( $cmd, $data ) {
	global $o3;
	$o3->mysqli->insert( 'api_calls', array(
			"cmd" => $cmd,
			"data_json" => json_encode($data),
			"ip" => $_SERVER['REMOTE_ADDR']
		) );
}

/*
* Store result
*/
function store_result( $cpr, $result_json ) {
	require_once(BS_CLASS_DIR.'/cpr.class.php');
	require_once(BS_CLASS_DIR.'/result.class.php');

	//decode result json
	$result = json_decode( $result_json, true );
	
	//insert cpr
	cpr::insert( $cpr, $result['score_left'], $result['score_right'], $result['score'] );

	//insert result
	result::insert( $cpr, $result_json, $result['score_left'], $result['score_right'], $result['score'] );

	return '';
}

/*
* Format mysql date to date
*/
function display_date( $date, $format = "d.m.Y H:i" ) {
	global $o3;
	return date( $format, $o3->mysqli->date2time( $date ) );
}

/*
* Get API calls
*/
function get_api_calls() {
	global $o3;
	$return = array();
	$result = $o3->mysqli->select( 'api_calls', array(), '*', '', ' created DESC ' );
	while ( $row = $result->fetch_object() ) {
		$return[] = array(
			'id' => $row->id,
			'created' => $o3->mysqli->date2time($row->created),
			'cmd' => $row->cmd,
			'data_json' => $row->data_json,
			'ip' => $row->ip
		);
	}
	return $return;
}

?>