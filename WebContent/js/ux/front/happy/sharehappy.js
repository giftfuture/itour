//加载编辑器  
$(document).ready(function() { 
    $('#content').summernote({  
        height: 400,                  
        minHeight: 300,             
        maxHeight: 500,        
        focus: true,   
        lang:'zh-CN',   
      /*  callbacks: { 
	        onImageUpload: function(files, editor, $editable) {  
	        	sendFile(files[0],editor,$editable);  //// 重写图片上传  
	        }
        },*/codemirror: {
            theme: 'monokai'
        },toolbar: [  
                    ['style', ['bold', 'italic', 'underline', 'clear']],  
                    ['fontsize', ['fontsize']],  
                    ['color', ['color']],  
                    ['para', ['ul', 'ol', 'paragraph']],  
                    ['height', ['height']],  
                    ['insert', ['picture', 'video']]  
                ], 
  });  
});  
//刷新验证码
/*function changeImg(){
    document.getElementById("validateCodeImg").src=basePath+"ImageServlet?"+Math.random();
}
*/
function changeValidateCode() {  
    var timenow = new Date().getTime();//这是为了防止每次刷新的时候验证码相同
    $("#validateCode").attr("src",basePath+"RandomCodeServlet?d="+timenow);  
  } 
function sharehappy() {
	var actionurl=basePath+"showhappy/add";//$("#formLogin").attr("action");//提交路径
	 var formData = new Object();
	//var formData= $("form[name='sharehappy']").serialize();
	$("form input").each(function(){
		 formData[this.name] =$("input[name='"+this.name+"']" ).val();
	});
	var route=$("#route").combobox('getValue');
	if(!route){	
		route = $("#route").combobox('getText');
	}
	formData["route"] = route;
	formData["content"] = $('#content').summernote('code');
	__.post(actionurl, formData, function(result) {
		//console.log("data.success="+data.success);
		if (result.success) {
			showSuccess(result.msg);
		} else {
			showError(result.msg);
		}
	});
	//console.log(formData);
	//console.log($.parseJSON(formData));
	//var showhappy = JSON.stringify($.parseJSON(formData));
	//var json='{"showhappy":'+showhappy+'}';
	//console.log(json);
	//console.log(formData+"   "+checkurl);
	//console.log(formData);
	/*$.ajax({
		async : false,
		cache : false,
		type : 'post',
		url : actionurl,//checkurl,// 请求的action路径
		dataType:'json',
		contentType:'application/json',
		//processData : false,
		data : formData,// $.parseJSON(formData),
		error : function() {// 请求失败处理函数
			alert('晒幸福处理函数出现错误');
		},
		success : function(data) {
			//console.log("data.success="+data.success);
			if (data.success) {
				showSuccess(data.msg);
				//setTimeout("formSubmit()", 0);
			//	formSubmit();
			//	alert("rraar"+actionurl);
			//	$("#" + this.name).val("");
			} else {
				showError(data.msg);
			}
		}
	});*/
}
function showSuccess(str) {
	$('#alertMessage').removeClass('error').html(str).stop(true, true).show().animate({
		opacity : 1,
		right : '0'
	}, 500);
}
//显示错误提示
function showError(str) {
	$('#alertMessage').addClass('error').html(str).stop(true, true).show().animate({
		opacity : 1,
		right : '0'
	}, 500);

}
//图片上传  
function sendFile(file, editor, $editable){ 
	
	$(".note-toolbar.btn-toolbar").append('正在上传图片');  
	 console.log("file="+file);  
	 console.log("editor="+editor);  
	 console.log("welEditable="+$editable);  
    var filename = false;  
    try{  
    filename = file['name'];  
    } catch(e){  
        filename = false;  
    }  
    if(!filename){  
        $(".note-alarm").remove();  
    }  
    //以上防止在图片在编辑器内拖拽引发第二次上传导致的提示错误  
    var data = new FormData();  
    data.append("file", file);  
    data.append("key",filename); //唯一性参数  
    data.append("token",$("#summernote").attr('token'));  
  //以上防止在图片在编辑器内拖拽引发第二次上传导致的提示错误
    var ext = filename.substr(filename.lastIndexOf("."));
    ext = ext.toUpperCase();
    var timestamp = new Date().getTime();
    var name = timestamp+"_"+$("#summernote").attr('aid')+ext;
    $.ajax({  
	    data: data,  
	    type: "POST",  
	    url: basePath+"showhappy/addd",  
	    cache: false,  
	    contentType: false,  
	    processData: false,  
	    success: function(url) {  
	        if(url=='200'){  
	            alert("上传失败！");  
	            return;  
	        }else{  
	            alert("上传成功！");   
	        }  
	        //alert(url);  
	    editor.insertImage($editable, url);  
	   // $("#summernote").summernote('insertImage', url, 'image name'); // the insertImage API  
	    //setTimeout(function(){$(".note-alarm").remove();},3000);  
	    },  
	    error:function(){  
	        alert("上传失败！");  
	        return;  
        //setTimeout(function(){$(".note-alarm").remove();},3000);  
        }  
  }); 
    
   // var text="${text}";   
  //  $('#summernote').code(text); // 给编辑器赋值
    
    //var str= $('#summernote').code();  //取值 
    
 }  
