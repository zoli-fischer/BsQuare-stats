<?php
	global $o3;
?>
<header>
	<div>
		<div class="container">		
			<div class="row">
				<nav class="col-xs-10">	
					
					<button class="navbar-toggle" data-toggle="collapse" data-target=".navHeaderCollapse"> 
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					
					<div class="spacer"></div>
					
					<div class="collapse navbar-collapse">	

						<?php echo $o3->menu->get_ul( 'nav navbar-nav nav-pills' ); ?>

					</div>

				</nav>
				<div class="col-xs-2 text-right">
					<img src="<?php echo BS_URL.'/'; ?>/res/logo.png" alt="" class="logo" />
				</div>
			</div>
		</div>

		<div class="container navHeaderCollapse hidden-lg hidden-md hidden-sm" style="background: #fff">		
			<div class="row">
				<nav class="col-xs-12">	
					<?php echo $o3->menu->get_ul( 'nav' ); ?>
				</nav>
			</div>
		</div>
	</div>
</header>