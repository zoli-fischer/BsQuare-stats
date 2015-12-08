function result_detail_icon( id ) {
	 return '<a href="javascript:open_result_detail('+id+')">'+o3_lang_('read more')+'</a>';
}

function open_result_detail( id ) {
	
	(new o3_popup({ 
		width: 840,
		height: 680,						
		showOverlay: true,
		header: {
			title: o3_lang_('Result'),
			showCloseButton: true
		},
		body: {
			type: 'url',
			src: 'index.php?template&type=result&id='+id
		},
		footer: {
			visible: false
		},
		clearOnClose: true,
		closeOnEsc: true,
		disabled: false,
		dragable: true						
	  })).show();
}

function show_is_fake( fake ) {
	return fake ? '<i class="fa fa-exclamation-triangle" data-tooltip="'+o3_lang_('Incorrect answer on no sound')+'"></i>' : '';
} 