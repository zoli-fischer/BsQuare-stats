<?php 

$id = o3_get('id');
$type = o3_get('type');
$view = 'template/'.basename($type).'_pop';

//show view for selected menu item	
$o3->template->view( $view, $id );

//flush template buffer
$o3->template->flush();

die();

?>