$('.sideBtn').on("click",function() {
	$('.sideBtn').toggleClass('btnc');
	$('.sidebar').toggleClass('side');
});

$(document).ready(function() {
	$("#bar").keyup(function() {
		let input = $(this).val();

		if (input.length > 0) {
			$.ajax (
				{
					url : '../lithium/action.php',
					method : 'POST',
					data : {
						query : input
					}, 
					success : function(response) {
						$("#results").html(response);
					},
					dataType : 'text'
				}
			);
		}
		else
			$("#results").html('');
	});
	$(document).on('click', 'a', function() {
		$("#bar").val($(this).text());
		$("#results").html('');
	});
});