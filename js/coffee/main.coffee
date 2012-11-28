# Execute on pageloaded
$ ->
	# Responsive Table
	$('td.stop, td.recipient, td.rate').addClass('is-hidden') # Hide non-crucial fields
	$('td.type, td.start, td.duration, td.cost').click( -> # Toggle showing non-crucial fields when clicking crucial field
		if $(window).width() < 768 # Only hide/show fields on small screens, on large screens the is-hidden state is ignored
			rowId = $(this).parent().attr('class');
			$('.' + rowId + ' td.stop, ' + 
			' .' + rowId + ' td.recipient, ' +
			' .' + rowId + ' td.rate').toggleClass('is-hidden')
	)
	