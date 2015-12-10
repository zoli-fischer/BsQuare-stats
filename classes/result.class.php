<?php

class result {

	//get result by id
	static function get_result_by_id( $id ) {
		global $o3;
		$return = array();
		$result = $o3->mysqli->select( 'results', array( 'id' => $id ), '*', '', ' created DESC ' );
		if ( $row = $result->fetch_array() ) {
			$row['result'] = json_decode( $row['result_json'], true );

			$row['left_result'] = array();
			$row['right_result'] = array();
			foreach ( $row['result']['result'] as $value ) {
				if ( strpos($value['hz'], 'L') !== false ) {					
					$value['hz'] = intval(str_replace('L', '', $value['hz']));
					$value['correct'] = $value['answer'] == 'L';
					$row['left_result'][$value['hz']] = $value;
				} else if ( strpos($value['hz'], 'R') !== false ) {
					$value['hz'] = intval(str_replace('R', '', $value['hz']));
					$value['correct'] = $value['answer'] == 'R';
					$row['right_result'][$value['hz']] = $value;
				}
			}

			return $row;
		}
		return false;
	}

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
	static function insert( $cpr, $result_json, $score_left, $score_right, $score, $treshould_left, $treshould_right, $fake, $cpr_id, $api_id ) {
		global $o3;

		//check cpr
		$cpr_check = is_cpr_valid( $cpr );

		$values = array(
			'cpr' => $cpr,
			'result_json' => $result_json,
			'score_left' => $score_left,
			'score_right' => $score_right,
			'score' => $score,
			'threshold_left' => $treshould_left, 
			'threshold_right' => $treshould_right, 
			'fake' => $fake === true ? 1 : 0,
			'api_call_id' => $api_id,
			'cpr_id' => $cpr_id
		);
		$update_values = array(
			'result_json' => $result_json,
			'score_left' => $score_left,
			'score_right' => $score_right,
			'score' => $score,
			'threshold_left' => $treshould_left, 
			'threshold_right' => $treshould_right, 
			'fake' => $fake === true ? 1 : 0,
			'api_call_id' => $api_id,
			'cpr_id' => $cpr_id
		);				

		if ( $o3->mysqli->insert( 'results', $values, $update_values ) )
			return $o3->mysqli->insert_id;

		return false;
	}
	
}

?>