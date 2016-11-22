$(document).ready(function(){
	$('#course-select').change(function() {
		$.ajax({
			type: "GET",
			url: 'get_teachers',
			data: {
				course_id: $(this).val(), 
			},
			dataType: "json",
			contentType: 'application/x-www-form-urlencoded',
			success: function (response) {
				$('#teacher-select').empty();
				$('#teacher-select').append($('<option>', { 
				        text: "Selecciona tu maestro",
				        disabled: 'disabled',
				        selected: 'selected' 
				    }));
				$.each(response, function (i, teacher) {
				    $('#teacher-select').append($('<option>', { 
				        value: teacher['id'],
				        text : teacher['name'] + ' ' + teacher['last_name'] 
				    }));
				});

				$('#teacher-select-div').fadeIn();
			}
			
		});
	});

	$('#teacher-select').change(function() {
		$('#reg-btn-div').fadeIn();
		
	});
		
});

