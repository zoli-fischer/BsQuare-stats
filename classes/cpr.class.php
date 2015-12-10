<?php

class cpr {

	//get cpr 
	static function get_cpr( $cpr ) {
		global $o3;
		require_once("result.class.php");

		$return = array();
		$result = $o3->mysqli->select( 'cprs', array(), '*', array( 'cpr' => $cpr ), ' last_result DESC ' );		
		while ( $row = $result->fetch_object() ) {
			$return[] = array(
				'id' => $row->id,
				'cpr' => $row->cpr,
				'valid' => $row->valid,
				'last_score_left' => $row->last_score_left,
				'last_score_right' => $row->last_score_right,
				'last_score' => $row->last_score,
				'last_threshold_left' => $row->last_threshold_left,
				'last_threshold_right' => $row->last_threshold_right,
				'last_fake' => $row->last_fake == 1,
				'last_result' => $o3->mysqli->date2time($row->last_result),
				'results' => count(result::get_cpr_results( $row->cpr )),
			);
		}		
		return count($return) > 0 ? $return[0] : false;
	}

	//get cprs 
	static function get_cprs() {
		global $o3;
		require_once("result.class.php");

		$return = array();
		$result = $o3->mysqli->select( 'cprs', array(), '*', '', ' last_result DESC ' );
		while ( $row = $result->fetch_object() ) {
			$return[] = array(
				'id' => $row->id,
				'cpr' => $row->cpr,
				'valid' => $row->valid,
				'last_score_left' => $row->last_score_left,
				'last_score_right' => $row->last_score_right,
				'last_score' => $row->last_score,
				'last_threshold_left' => $row->last_threshold_left,
				'last_threshold_right' => $row->last_threshold_right,
				'last_fake' => $row->last_fake == 1,
				'last_result' => $o3->mysqli->date2time($row->last_result),
				'results' => count(result::get_cpr_results( $row->cpr )),
			);
		}
		return $return;
	}

	//insert new cpr
	static function insert( $cpr, $score_left, $score_right, $score, $treshould_left, $treshould_right, $fake ) {
		global $o3;

		//check cpr
		$cpr_check = is_cpr_valid( $cpr );

		$values = array(
			'cpr' => $cpr,
			'valid' => $cpr_check !== false ? $cpr_check['valid'] : 0,
			'gender' => $cpr_check !== false ? $cpr_check['gender'] : 0,
			'last_score_left' => $score_left,
			'last_score_right' => $score_right,
			'last_score' => $score,
			'last_threshold_left' => $treshould_left, 
			'last_threshold_right' => $treshould_right, 
			'last_fake' => $fake === true ? 1 : 0
		);
		$update_values = array(
			'gender' => 0,
			'last_score_left' => $score_left,
			'last_score_right' => $score_right,
			'last_score' => $score,
			'last_threshold_left' => $treshould_left, 
			'last_threshold_right' => $treshould_right, 
			'last_fake' => $fake === true ? 1 : 0
		);

		if ( $o3->mysqli->insert( 'cprs', $values, $update_values ) )
			return $o3->mysqli->insert_id;

		if ( ( $cpr_id = self::get_cpr( $cpr ) ) !== false )
			return $cpr_id['id'];

		return false;
	}
	
}

?>