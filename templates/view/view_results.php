<?php
require_once(BS_CLASS_DIR.'/result.class.php');
?>
<div class="container">
	<div class="row">
		<div class="col-xs-12">	
			<h1>{O3_LANG:menu-results}</h1>
		</div>
		<div class="col-xs-12">

			<div class="default_table results"></div>

			<script type="text/javascript">
													
				var results = <?php echo json_encode(result::get_results())?>,
					main_table = $('.default_table').o3_table( {
						headers: [ { label: '{O3_LANG:CPR number}', content: "cpr" },
								   { label: '{O3_LANG:Score}', content: "o3_lang_('score-'+score)" },
								   { label: '{O3_LANG:Left ear}', content: "score_left+'%'" },
								   { label: '{O3_LANG:Right ear}', content: "score_right+'%'" },
								   { label: '{O3_LANG:Date}', content: "o3_date( 'd.m.Y H:i:s', created )", sort: { is_default: true, type: 'number', ascending: false } },								   
								 ],
						scope: results,
						search: '<?php echo o3_get('cpr',''); ?>'
					} );
				
			</script>

		</div>
	</div>
</div>