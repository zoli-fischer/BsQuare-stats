<div class="container">
	<div class="row">
		<div class="col-xs-12">
			<h1>{O3_LANG:menu-api_calls}</h1>
		</div>

		<div class="col-xs-12">

			<div class="default_table api_calls"></div>

			<script type="text/javascript">
													
				var api_calls = <?php echo json_encode(get_api_calls())?>,
					main_table = $('.default_table').o3_table( {
						headers: [ { label: '{O3_LANG:Date}', content: "o3_date( 'd.m.Y H:i:s', created )", sort: { is_default: true, type: 'number', ascending: false } },
								   { label: 'CMD', content: "cmd" },
								   { label: 'IP', content: "ip" },
								   { label: 'ID', content: "id" },
								   { label: 'JSON', content: "data_json" },
								 ],
						scope: api_calls
					} );
				
			</script>

		</div>
	</div>
</div>