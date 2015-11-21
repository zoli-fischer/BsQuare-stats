<?php

global $LANGUAGE_INDEXES, $o3;

?>
<div class="container">
	<div class="row">
		<div class="col-sm-12">	
			<h1>{O3_LANG:menu-settings}</h1>
		</div>
	</div>
	<div class="spacer spacer-m"></div>
	<form method="POST">
		<input type="hidden" name="form" value="settings" /> 
		<div class="row">
			<div class="col-sm-6">	
				
				<div class="form-group">
					<label for="settings_language">{O3_LANG:Language}</label>
		        	<select id="settings_language" name="settings_language" class="form-control">
			        	<?php
			        	foreach ( $LANGUAGE_INDEXES as $key => $value )
			        		echo '<option value="'.$value.'" '.( o3_cookie('lang2cookie') == $value ? 'selected' : '' ).'>'.$o3->lang->_('lang-'.$value).'</option>';			        
			        	?>
		        	</select>
		        </div>

			</div>
			<div class="col-sm-6">

			</div>
		</div>
		<div class="row">
			<div class="col-sm-12">	
				<button type="button" class="btn btn-link" onclick="window.location='<?php echo BS_URL; ?>'">{O3_LANG:Cancel}</button>
				<button type="submit" class="btn btn-primary">{O3_LANG:Save}</button>
			</div>
		</div>
	</form>
</div>