// Generated by CoffeeScript 1.3.3
(function() {

  $(function() {
    $('td.stop, td.recipient, td.rate').addClass('is-hidden');
    return $('td.type, td.start, td.duration, td.cost').click(function() {
      var rowId;
      if ($(window).width() < 768) {
        rowId = $(this).parent().attr('class');
        return $('.' + rowId + ' td.stop, ' + ' .' + rowId + ' td.recipient, ' + ' .' + rowId + ' td.rate').toggleClass('is-hidden');
      }
    });
  });

}).call(this);
