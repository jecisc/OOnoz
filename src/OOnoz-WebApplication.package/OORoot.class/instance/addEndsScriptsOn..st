rendering
addEndsScriptsOn: html
	html script url: 'https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js'.
	html script
		url: 'https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js';
		attributeAt: 'integrity'
			put: 'sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa';
		attributeAt: 'crossorigin' put: 'anonymous'.
	html script
		url: 'https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.11.0/bootstrap-table.min.js'.
	html script
		url:
			'https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.11.0/locale/bootstrap-table-fr-FR.min.js'.
	html script url: 'https://cdn.jsdelivr.net/jquery.autosize/3.0.17/autosize.min.js'.
	html script: 'autosize($(''textarea''));'