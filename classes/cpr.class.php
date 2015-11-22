<?php

class cpr {

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
				'last_result' => $o3->mysqli->date2time($row->last_result),
				'results' => count(result::get_cpr_results( $row->cpr ))
			);
		}
		return $return;
	}

	//insert new cpr
	static function insert( $cpr, $score_left, $score_right, $score ) {
		global $o3;

		//check cpr
		$cpr_check = is_cpr_valid( $cpr );

		$values = array(
			'cpr' => $cpr,
			'valid' => $cpr_check !== false ? $cpr_check['valid'] : 0,
			'gender' => $cpr_check !== false ? $cpr_check['gender'] : 0,
			'last_score_left' => $score_left,
			'last_score_right' => $score_right,
			'last_score' => $score
		);
		$update_values = array(
			'gender' => 0,
			'last_score_left' => $score_left,
			'last_score_right' => $score_right,
			'last_score' => $score
		);

		if ( $o3->mysqli->insert( 'cprs', $values, $update_values ) )
			return $o3->mysqli->insert_id;

		return false;
	}
	
}

?>