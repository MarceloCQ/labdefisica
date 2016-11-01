$(document).ready (function(){
  $(".search-input").keyup(function() {
		var $tablaActual = $(this).parent().next();
	    var $rows = $tablaActual.find('tbody tr');
	    var val = '^(?=.*\\b' + $.trim($(this).val()).split(/\s+/).join('\\b)(?=.*\\b') + ').*$',
        reg = RegExp(val, 'i'),
        text;
	    $rows.show().filter(function() {
	    	text = "";
	    	$(this).children('td').each(function(){
	    		text += $(this).text() + " ";
	    	});
	        return !reg.test(text);
	    }).hide();
	});
});

