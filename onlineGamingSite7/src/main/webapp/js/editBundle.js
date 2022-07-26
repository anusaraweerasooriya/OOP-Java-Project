$(document).ready(function () {
		$.ajax({
			url:"GameListServlet",
			method:"GET",
			data: {operation:'game'},
			success: function (data, textStatus, jqXHR) {
				console.log(data);
				let obj = $.parseJSON(data);
				$.each(obj,function(key, value) {
					$('#game').append('<option value="' + value.gId + '">' + value.gName + '</option>')
				});
				$('#game').selectpicker('refresh');
				$('select').formSelect();
					
			},
			error: function (jqXHR, textStatus, errorThrown) {
				$('#game').append('<option>Game Unavailable</option>');
			},
			cache: false
		});
	});
	
	$(document).ready(function () {
		$.ajax({
			url:"GameListServlet",
			method:"GET",
			data: {operation:'game2'},
			success: function (data, textStatus, jqXHR) {
				console.log(data);
				let obj = $.parseJSON(data);
				$.each(obj,function(key, value) {
					$('#game2').append('<option value="' + value.gId + '">' + value.gName + '</option>')
				});
				$('#game2').selectpicker('refresh');
				$('select').formSelect();
				
				
			},
			error: function (jqXHR, textStatus, errorThrown) {
				$('#game2').append('<option>Game Unavailable</option>');
			},
			cache: false
		});
	});
	
	$(document).ready(function () {
		$.ajax({
			url:"GameListServlet",
			method:"GET",
			data: {operation:'game3'},
			success: function (data, textStatus, jqXHR) {
				console.log(data);
				let obj = $.parseJSON(data);
				$.each(obj,function(key, value) {
					$('#game3').append('<option value="' + value.gId + '">' + value.gName + '</option>')
				});
				$('#game3').selectpicker('refresh');
				$('select').formSelect();
				
			},
			error: function (jqXHR, textStatus, errorThrown) {
				$('#game3').append('<option>Game Unavailable</option>');
			},
			cache: false
		});
	});
	
	$(document).ready(function () {
		$.ajax({
			url:"GameListServlet",
			method:"GET",
			data: {operation:'game4'},
			success: function (data, textStatus, jqXHR) {
				console.log(data);
				let obj = $.parseJSON(data);
				$.each(obj,function(key, value) {
					$('#game4').append('<option value="' + value.gId + '">' + value.gName + '</option>')
				});
				$('#game4').selectpicker('refresh');
				$('select').formSelect();
				
			},
			error: function (jqXHR, textStatus, errorThrown) {
				$('#game4').append('<option>Game Unavailable</option>');
			},
			cache: false
		});
	});
	
	