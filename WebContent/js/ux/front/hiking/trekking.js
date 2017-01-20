$(document).ready(function() {
	
	$("input[name='commit']").click(function(){
		document.forms[""].submit();
	});
	$("input[name='reset']").click(function(){
		//$(this).resetForm(); // 提交后重置表单
		document.forms[""].reset();
	});
})