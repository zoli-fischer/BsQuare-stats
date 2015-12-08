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
//$o3->module( 'form' );

//o3 modules load them	
$o3->load();

//set js load url
$o3->lang->set_js_url(BS_URL.'/script/lang.php');

//no external lang file
$o3->lang->set_html_script_external( false );

//set mysqli char encoding
$o3->mysqli->set_charset("utf8");

//add opmax version to debug
$o3->debug->_('BsQuare v'.BS_VERSION);

//load menu collection
$o3->lang->load('menu');

//insert global settings in html head
//$o3->head_inline('', 'javascript');

//load helper functions
require_once( BS_CLASS_DIR.'/helpers.php' );

//handle api request
if ( isset($_REQUEST['api']))
	require_once('api.php');

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

//is menu item selected
$menu_selected = false;

//first menu href
$first_menu_href = '';

//populate menu object
foreach ( $BS_MAIN_MENU as $key => $value ) {

	//generate link
	$href = $value['href'] != '' ? $value['href'] : $o3->lang->_($value['language-index'].'-seo');	

	//set the first menu href
	if ( $first_menu_href === '' )
		$first_menu_href = $href;

	//create menu item
	$main_menu_item = $o3->menu->add( $key, 
									  '<span>{o3_lang:'.$value['language-index'].'}</span>', 
									  $href, 
									  $value['target'], 
									  '' );

	if ( $main_menu_item->selected ) {
		//show view for selected menu item	
		$o3->template->view( $value['view'], $key );		

		//set menu selected
		$menu_selected = true;
	}

}
//no menu selected redirect to first menu
if ( !$menu_selected && $first_menu_href != '' )
	o3_redirect( $first_menu_href );

//set template
$o3->template->template('index');

//flush template buffer
$o3->template->flush();

?>