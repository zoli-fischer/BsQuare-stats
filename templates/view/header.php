<?php
	global $o3;
?>
<header>
	<div>
		<div class="container">		
			<div class="row">
				<nav class="col-xs-6">	
					<?php echo $o3->menu->get_ul( 'nav nav-pills' ); ?>
				</nav>
				<div class="col-xs-6 text-right">
					<img src="<?php echo BS_URL.'/'; ?>/res/logo.png" alt="" class="logo" />
				</div>
			</div>
		</div>
	</div>
</header>