<?php
require_once(BS_CLASS_DIR.'/cpr.class.php');
?>
<div class="container">
	<div class="row">
		<div class="col-xs-12">	
			<h1>{O3_LANG:menu-cprs}</h1>
		</div>
		<div class="col-xs-12">

			<div class="default_table cprs"></div>

			<script type="text/javascript">
													
				var cprs = <?php echo json_encode(cpr::get_cprs())?>,
					main_table = $('.default_table').o3_table( {
						headers: [ { label: 'ID', content: "id" },
								   { label: '{O3_LANG:CPR number}', content: "cpr" },
								   { label: '{O3_LANG:Last score}', content: "o3_lang_('score-'+last_score)" },
								   { label: '{O3_LANG:Left ear}', content: "last_score_left+'%'" },
								   { label: '{O3_LANG:Right ear}', content: "last_score_right+'%'" },
								   { label: '{O3_LANG:Date}', content: "o3_date( 'd.m.Y H:i:s', last_result )", sort: { is_default: true, type: 'number', ascending: false } },								   
								 ],
						scope: cprs
					} );
				
			</script>

		</div>
	</div>
</div>