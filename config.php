<?php

/** Version of your backoffice installation */
define('BS_VERSION','1.0a');

/**************FILESYSTEM & URL****************/

/** HOST of your backoffice installation */
define('BS_HOST',$_SERVER['HTTP_HOST']);

/** URL to your backoffice installation */
define('BS_URL','http'.( isset($_SERVER['HTTPS']) ? 's' : '' ).'://'.BS_HOST.'/BsQuare-stats');

/** The root of your backoffice installation */
define("BS_DIR", str_replace(DIRECTORY_SEPARATOR, '/', realpath(dirname(__FILE__))));

/** The location of the backoffice include directory */
define("BS_CLASS_DIR", BS_DIR."/classes");

/** Dir that contains this file */
define('SITE_ROOT_DIR', str_replace(DIRECTORY_SEPARATOR, '/', realpath(dirname(__FILE__))) );

/** Dir for o3 installment */
define('BS_O3_PATH', '/data/virtual/o3' );

/** URL to your O3 installation */
define('O3_URL','/o3');

/** The location of the O3 cache directory */
define("O3_CACHE_DIR", SITE_ROOT_DIR."/cache");

/** URL to cache forlder for your O3 installation */
define("O3_CACHE_URL", BS_URL.'/cache' );

/** The location of the directory with json language files */
define("O3_LANG_DIR", SITE_ROOT_DIR.'/langs' );

/** The location of the directory with json email template files */
define('O3_EMAIL_DIR', SITE_ROOT_DIR.'/emails' ); 

/** Image magic script */
define("O3_IMAGE_MAGIC", "/usr/local/bin/convert");

/*********** SECURITY *******************/

/** Username and password used by the admin utility in www/ */
define( "O3_ADMIN_USERNAME", 'bsquare' );
define( "O3_ADMIN_PASSWORD", "bsquare" );

/******************DEBUG & LOG******************/

/** Test mode of your backoffice installation */
define('BS_TEST_MODE', true );

//disable/enable debug console
define('O3_DEBUG_ALLOWED', BS_TEST_MODE );

//disable/enable log
define('O3_LOG_ALLOWED', false );

//define the log file to write errors to
define('O3_LOG_FILE', SITE_ROOT_DIR.'/o3.log');

/** Show performed mysqli queries in debug console if debugging allowed */
define('O3_MYSQLI_DEBUG_QUERIES', true );

/****************** MODULE MYSQLI ******************/

/** Connect to mysql server after O3 initialization */
define('O3_MYSQLI_AUTOCONNECT',true);

/** MySql default database to select */
define('O3_MYSQLI_DB','bsquare');

/** DB connection is added to git ignore for security */
require_once("config.db.php");

/******************* MODULE MINI ******************/

/** Allow minimizeing of files */
define('O3_MINI_MINIMIZE', true );

/** Allow minimizeing of js files */
define('O3_MINI_JS', true ); 

/** Allow minimizeing of css files */
define('O3_MINI_CSS', true );

/****************** MODULE EMAIL ******************/

/** Email sender address for outgoing emails */
define('O3_EMAIL_SEND_FROM', 'BsQuare <noreply@'.BS_HOST.'>' );

/** Email address for test emails */
define('O3_EMAIL_TEST_ADDRESS', 'zlf@web2it.dk' );

/** Test mode of email sendings */
define('O3_EMAIL_TEST_MODE', BS_TEST_MODE );

/**************** MODULE TEMPLATE ****************/

/** Test mode of email sendings */
define('O3_TEMPLATE_DIR', BS_DIR."/templates" );

/****************** MODULE LANGUAGE / LANGUAGE******************/

/** Language indexes - convert old numeric language index to new varchar(2)*/
$LANGUAGE_INDEXES = array( 'en', 'da' );

/** DEfault language if nothing selected is the first language from the list*/
define( 'BS_DEFAULT_LANGUAGE', $LANGUAGE_INDEXES[0] );

/*************** GENERAL ****************/

/*************** MENU ****************/

define( 'BS_MENU_CPRS', 'cprs' );
define( 'BS_MENU_RESULTS', 'results' );
define( 'BS_MENU_STATS', 'statistics' );
define( 'BS_MENU_API_CALLS', 'api_calls' );
define( 'BS_MENU_SETTINGS', 'settings' );

/** Definition of the menu structure 
* language-index - string - Language translation to use for menu label
* view - string - View to load if menu is selected
* href - string - Href of menu A item
* target - string - Target of menu A item
* user-types - array/string - Type of users can access/see this menu. If not defined all users can access the menu.
*/
$BS_MAIN_MENU = array(
	BS_MENU_CPRS => array( 'language-index' => 'menu-'.BS_MENU_CPRS, 'view' => 'view_'.BS_MENU_CPRS, 'href' => '', 'target' => '_self' ),
	BS_MENU_RESULTS => array( 'language-index' => 'menu-'.BS_MENU_RESULTS, 'view' => 'view_'.BS_MENU_RESULTS, 'href' => '', 'target' => '_self' ),
	BS_MENU_STATS => array( 'language-index' => 'menu-'.BS_MENU_STATS, 'view' => 'view_'.BS_MENU_STATS, 'href' => '', 'target' => '_self' ),
	BS_MENU_API_CALLS => array( 'language-index' => 'menu-'.BS_MENU_API_CALLS, 'view' => 'view_'.BS_MENU_API_CALLS, 'href' => '', 'target' => '_self' ),
	BS_MENU_SETTINGS => array( 'language-index' => 'menu-'.BS_MENU_SETTINGS, 'view' => 'view_'.BS_MENU_SETTINGS, 'href' => '', 'target' => '_self' )
);

?>