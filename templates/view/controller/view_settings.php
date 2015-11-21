<?php

class view_settings extends o3_template_view_controller {

	//do on init
	public function init( $id ) {
		global $o3, $LANGUAGE_INDEXES;

		//save changes
		if ( o3_post('form') == 'settings' ) {
			$settings_language = o3_post('settings_language');
			$settings_language = in_array( $settings_language, $LANGUAGE_INDEXES ) ? $settings_language : BS_DEFAULT_LANGUAGE;
			o3_set_cookie('lang2cookie',$settings_language,3600*24*365);

			$o3->lang->load( 'menu', $settings_language );
			$o3->lang->current( o3_cookie('lang2cookie') );

			//reload page
			o3_redirect(get_menu_url(BS_MENU_SETTINGS));
		}

	}

}

?>