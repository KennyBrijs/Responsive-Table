# Execute on pageloaded
$ ->
	# Window sizes below 768px
	# Will not respond to window resizing, but mobile users will not resize their window
	# Like this you can group your code for certain screeen sizes, if you need it to respond you will need to repeat the screensize checks
	if $(window).width() < 768
		$('td.stop, td.recipient, td.rate').addClass('is-hidden')

		$('td.type, td.start, td.duration, td.cost').click( ->
			rowId = $(this).parent().attr('class');
			$('.' + rowId + ' td.stop, ' + 
			' .' + rowId + ' td.recipient, ' +
			' .' + rowId + ' td.rate').toggleClass('is-hidden')
		)