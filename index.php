<?php

//load config
require_once('config.php');

//set error reporting for test mode
if ( BS_TEST_MODE ) {	
	error_reporting( E_ALL );
	ini_set('display_errors', 'On'); 
}	

//O3 engine for css & js minimizer and more...
require_once(BS_O3_PATH.'/o3.php');
$o3 = new o3();

o3_session_start(); //start session
o3_header_encoding(); //set utf-8 document encoding

//set language over GET
if ( isset($_GET['lang']) && in_array( o3_get('lang'), $LANGUAGE_INDEXES ) )
	o3_set_cookie('lang2cookie',o3_get('lang'));

//add module for loading
$o3->module( array( 'name' => 'lang', 'data' => array( 'languages' => implode(',', $LANGUAGE_INDEXES), 'current' => o3_cookie('lang2cookie') != null ? o3_cookie('lang2cookie') : BS_DEFAULT_LANGUAGE ) ) );
$o3->module( 'mysqli' );
$o3->module( 'login' );
$o3->module( 'menu' );
$o3->module( 'mini' );
$o3->module( 'template' );
$o3->module( 'routing' );
$o3->module( 'form' );

//o3 modules load them	
$o3->load();

//set js load url
$o3->lang->set_js_url(BS_URL.'/script/lang.php');

//set mysqli char encoding
$o3->mysqli->set_charset("utf8");

//add opmax version to debug
$o3->debug->_('BsQuare v'.BS_VERSION);

//load menu collection
$o3->lang->load('menu');

//insert global settings in html head
/*
$o3->head_inline('var MAX_CONTRACT_DURATION = '.MAX_CONTRACT_DURATION.', 
					  MIN_CONTRACT_DURATION = '.MIN_CONTRACT_DURATION.',
					  VAT_PERCENT = '.VAT_PERCENT.',
					  MIN_VEHICLE_AGE = '.MIN_VEHICLE_AGE.',
					  DEFAULT_INSURANCE = '.DEFAULT_INSURANCE.',
					  MAX_ACCOUNT_BONUS = '.MAX_ACCOUNT_BONUS.',
					  SCANLEASING_COMPANY_ID = '.SCANLEASING_COMPANY_ID.',
					  VEHICLE_TYPE_CAR = '.VEHICLE_TYPE_CAR.',
					  VEHICLE_TYPE_VAN = '.VEHICLE_TYPE_VAN.',
					  VEHICLE_TYPE_MOTORCYCLE = '.VEHICLE_TYPE_MOTORCYCLE.';', 'javascript');
*/

//load helper functions
require_once( BS_CLASS_DIR.'/helpers.php' );

//handle ajax request
if ( isset($_REQUEST['ajax']))
	require_once('ajax.php');

//handle pdf request
if ( isset($_REQUEST['pdf']))
	require_once('pdf.php');

//handle excel request
if ( isset($_REQUEST['excel']))
	require_once('excel.php');

//handle template request
if ( isset($_REQUEST['template']))
	require_once('template.php');

//set flag for auto menu item select check
$o3->menu->check_uri_flag = O3_COMPARE_URI_HOST | O3_COMPARE_URI_PATH;

//populate menu object
foreach ( $BS_MAIN_MENU as $key => $value ) {

	//generate link
	$href = $value['href'] != '' ? $value['href'] : $o3->lang->_($value['language-index'].'-redirect');	

	//create menu item
	$main_menu_item = $o3->menu->add( $key, 
									  '<span>{o3_lang:'.$value['language-index'].'}</span>', 
									  $href, 
									  $value['target'], 
									  '' );

	if ( $main_menu_item->selected ) {
		//show view for selected menu item	
		$o3->template->view( $value['view'], $key );		
	}

}

//no url requested show login view
//$o3->routing->function_rule( '/', 'view', $o3->template, 'login' );

//set template
$o3->template->template('index');

//flush template buffer
$o3->template->flush();

?>