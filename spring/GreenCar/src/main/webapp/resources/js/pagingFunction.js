$(document).ready(function() {
	
	var actionForm = $("#actionForm");
	
	$(".paginate_btn a").on("click", function(e){
		
		e.preventDefault();
	
		console.log('click');
		
		actionForm.find("input[name='pageNum']").val($(this).attr("href"));
		actionForm.submit();
	});
});