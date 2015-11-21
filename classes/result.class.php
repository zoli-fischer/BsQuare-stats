<?php

class result {

	//get results
	static function get_cpr_results( $cpr ) {
		global $o3;
		$return = array();
		$result = $o3->mysqli->select( 'results', array( "cpr" => $cpr ), '*', '', ' created DESC ' );
		while ( $row = $result->fetch_object() ) {
			$return[] = array(
				'score_left' => $row['score_left'],
				'score_right' => $row['score_right'],
				'score' => $row['score'],
			);
		}
		return $return;
	}

	//insert new cpr
	static function insert( $cpr, $result_json, $score_left, $score_right, $score ) {
		global $o3;

		//check cpr
		$cpr_check = is_cpr_valid( $cpr );

		$values = array(
			'cpr' => $cpr,
			'result_json' => $result_json,
			'score_left' => $score_left,
			'score_right' => $score_right,
			'score' => $score
		);
		$update_values = array(
			'result_json' => $result_json,
			'score_left' => $score_left,
			'score_right' => $score_right,
			'score' => $score
		);

		if ( $o3->mysqli->insert( 'results', $values, $update_values ) )
			return $o3->mysqli->insert_id;

		return false;
	}
	
}

?>