<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: PUT, GET, POST, DELETE, OPTIONS");
header("Access-Control-Allow-Headers: Origin, X-Titanium-Id, Content-Type, Accept");

//ignore direct call of api.php
if ( isset($o3) ) {
	$cmd = o3_request('cmd');

	//store api call
	store_api_call( $cmd, $_REQUEST );
	
	switch ( $cmd ) {
		case 'check_cpr':
			echo check_cpr( o3_request('cpr') );
			die();
			break;
		case 'new_result':
			echo store_result( o3_request('cpr'), o3_request('result') );
			die();
			break;
		case 'get_results':
			require_once(BS_CLASS_DIR.'/result.class.php');
			echo json_encode(result::get_cpr_results( o3_request('cpr') ));
			die();
			break;
	}

}

?>