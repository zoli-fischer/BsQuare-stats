<?php
	global $o3;
?><!DOCTYPE HTML>
<html lang="da">
<head>

	<base href="<?php echo BS_URL; ?>/">
	
	<title><?php echo $title != '' ? $title.' - ' : '' ; ?>BsQuare v<?php echo BS_VERSION; ?></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="HandheldFriendly" content="true" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=3, user-scalable=no, minimal-ui" />
	<meta name="author" content="BsQuare" />	

	<!--[if IE]>
		<meta http-equiv="imagetoolbar" content="no" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />	
	<![endif]-->

	<!--[if lt IE 9]>
	  <script src="://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	  <script src="://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
	<![endif]-->

	<link rel="shortcut icon" href="<?php echo BS_URL.'/'; ?>/res/favicon.ico" type="image/x-icon" />
	<link rel="icon" href="<?php echo BS_URL.'/'; ?>/res/favicon.ico" type="image/x-icon" />	
	<link rel="apple-touch-icon" href="<?php echo BS_URL.'/'; ?>/res/apple-touch-icon.png" />
	<link rel="apple-touch-icon" sizes="57x57" href="<?php echo BS_URL.'/'; ?>/res/apple-touch-icon-57x57.png" />
	<link rel="apple-touch-icon" sizes="72x72" href="<?php echo BS_URL.'/'; ?>/res/apple-touch-icon-72x72.png" />
	<link rel="apple-touch-icon" sizes="76x76" href="<?php echo BS_URL.'/'; ?>/res/apple-touch-icon-76x76.png" />
	<link rel="apple-touch-icon" sizes="114x114" href="<?php echo BS_URL.'/'; ?>/res/apple-touch-icon-114x114.png" />
	<link rel="apple-touch-icon" sizes="120x120" href="<?php echo BS_URL.'/'; ?>/res/apple-touch-icon-120x120.png" />
	<link rel="apple-touch-icon" sizes="144x144" href="<?php echo BS_URL.'/'; ?>/res/apple-touch-icon-144x144.png" />
	<link rel="apple-touch-icon" sizes="152x152" href="<?php echo BS_URL.'/'; ?>/res/apple-touch-icon-152x152.png" />
	<link rel="apple-touch-icon" sizes="180x180" href="<?php echo BS_URL.'/'; ?>/res/apple-touch-icon-180x180.png" />

		
	<?php

	//load frameworks
	$o3->body_res( 'jquery,knockout,o3_no_css,o3_route,o3_string,o3_valid,o3_popup_no_css,o3_tooltip_no_css,sprintf,o3_popnote_no_css,bootstrap_no_css' );	
	
	//create list of css
	echo $o3->mini->css_link( SITE_ROOT_DIR.'/css/fonts.css', 
							  O3_RES_DIR.'/js/o3_popup/o3_popup.css', 
							  O3_RES_DIR.'/js/o3_popnote/o3_popnote.css', 
							  O3_RES_DIR.'/js/lib/bootstrap/3-latest/css/bootstrap.css', 
							  SITE_ROOT_DIR.'/css/style.less' );


	//load res.	
	$o3->body_res( '', SITE_ROOT_DIR.'/script/script.js' );	
	
	//inline js
	?>
	<script>
		//localisation formating
		var decimals = '{O3_LANG:decimals}',
		thousands_sep = '{O3_LANG:thousands_sep}',
		decimal_sep = '{O3_LANG:decimal_sep}';
	</script>	
	
</head>
<body class="<?php echo o3_ua_body_classes(); ?> index ">
	
	<div class="main">
		
		<?php $this->view('header'); ?>
		
		<section class="main">
			<div>
				<?php echo $content; ?>				
			</div>
		</section>

		<?php $this->view('footer'); ?>
		
	</div>

</body>
</html>