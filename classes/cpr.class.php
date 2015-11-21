<?php

class cpr {

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