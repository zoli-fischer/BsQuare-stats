<?php

require_once(BS_CLASS_DIR."/result.class.php");

class result_pop extends o3_template_view_controller {

	protected $data = false;
	protected $id = 0;

	//do on init
	public function init( $id ) {
		global $o3;
		
		$this->id = $id;
		$this->data = result::get_result_by_id( $id ); 

	}

	//do before load
	public function before_load() {
				
	}

}

?>