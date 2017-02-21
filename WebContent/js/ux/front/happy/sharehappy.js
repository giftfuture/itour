//加载编辑器  
$(document).ready(function() {  
    $('#summernote').summernote({  
        height: 400,                  
        minHeight: 300,             
        maxHeight: 500,        
        focus: true,   
        lang:'zh-CN',   
        // 重写图片上传  
    onImageUpload: function(files, editor, $editable) {  
        sendFile(files[0],editor,$editable);  
    }  
  });  
});  
//刷新验证码
/*function changeImg(){
    document.getElementById("validateCodeImg").src=basePath+"ImageServlet?"+Math.random();
}
*/
function changeValidateCode() {  
    var timenow = new Date().getTime();//这是为了防止每次刷新的时候验证码相同
    $("#validateCode").attr("src",basePath+"/RandomCodeServlet?d="+timenow);  
  } 
//图片上传  
function sendFile(file, editor, $editable){  
      
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
    data = new FormData();  
    data.append("file", file);  
    data.append("key",filename); //唯一性参数  
  
    $.ajax({  
    data: data,  
    type: "POST",  
    url: "",  
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