<?php

class result {

	//get results
	static function get_results() {
		global $o3;
		$return = array();
		$result = $o3->mysqli->select( 'results', array(), '*', '', ' created DESC ' );
		while ( $row = $result->fetch_object() ) {
			$return[] = array(
				'id' => $row->id,
				'cpr' => $row->cpr,
				'score_left' => $row->score_left,
				'score_right' => $row->score_right,
				'score' => $row->score,
				'threshold_left' => $row->threshold_left,
				'threshold_right' => $row->threshold_right,
				'fake' => $row->fake == 1,
				'created' => $o3->mysqli->date2time($row->created)
			);
		}
		return $return;
	}

	//get results
	static function get_cpr_results( $cpr ) {
		global $o3;
		$return = array();
		$result = $o3->mysqli->select( 'results', array( "cpr" => $cpr ), '*', '', ' created DESC ' );
		while ( $row = $result->fetch_object() ) {
			$return[] = array(
				'score_left' => $row->score_left,
				'score_right' => $row->score_right,
				'score' => $row->score,
				'threshold_left' => $row->threshold_left,
				'threshold_right' => $row->threshold_right,
				'fake' => $row->fake == 1,
				'created' => display_date( $row->created )
			);
		}
		return $return;
	}

	//insert new cpr
	static function insert( $cpr, $result_json, $score_left, $score_right, $score, $treshould_left, $treshould_right, $fake ) {
		global $o3;

		//check cpr
		$cpr_check = is_cpr_valid( $cpr );

		$values = array(
			'cpr' => $cpr,
			'result_json' => $result_json,
			'score_left' => $score_left,
			'score_right' => $score_right,
			'score' => $score,
			'treshould_left' => $treshould_left, 
			'treshould_right' => $treshould_right, 
			'fake' => $fake === true ? 1 : 0
		);
		$update_values = array(
			'result_json' => $result_json,
			'score_left' => $score_left,
			'score_right' => $score_right,
			'score' => $score,
			'treshould_left' => $treshould_left, 
			'treshould_right' => $treshould_right, 
			'fake' => $fake === true ? 1 : 0
		);

		if ( $o3->mysqli->insert( 'results', $values, $update_values ) )
			return $o3->mysqli->insert_id;

		return false;
	}
	
}

?>