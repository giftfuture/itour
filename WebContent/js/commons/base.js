$package('itour');
var itour={
	/*Json 工具类*/
	isJson:function(str){
		var obj = null; 
		try{
			obj = itour.paserJson(str);
		}catch(e){
			return false;
		}
		var result = typeof(obj) == "object" && Object.prototype.toString.call(obj).toLowerCase() == "[object object]" && !obj.length; 
		return result;
	},
	paserJson:function(str){
		return eval("("+str+")");
	},
	/*弹出框*/
	alert:function(title, msg, icon, callback){
		$.messager.alert(title,msg,icon,callback);
	},
	/*弹出框*/
	confirm:function(title, msg,callback){
		$.messager.confirm(title,msg,callback);
	},
	progress:function(title,msg){
		 var win = $.messager.progress({  
            title: title ||'Please waiting',  
            msg: msg ||'Loading data...'  
         }); 
	},
	closeProgress:function(){
		$.messager.progress('close');
	},
	/*重新登录页面*/
	toLogin:function(){
		window.top.location= urls['msUrl']+"main/login";
	},
	checkLogin:function(data){//检查是否登录超时
		//console.log(data);
		//console.log(data+"      "+data.logoutFlag);
		if(!data /*|| data.logoutFlag || data.logoutFlag == null*/){
			itour.closeProgress();
			itour.alert('提示',"登录超时,点击确定重新登录.",'error',itour.toLogin);
			return false;
		}
		return true;
	},
	ajaxSubmit:function(form,option){
		form.ajaxSubmit(option);
		$(this).resetForm(); // 提交后重置表单
		return false;
	},
	ajaxJson: function(url,option,callback){
		$.ajax(url,{
				type:'post',
			 	dataType:'json',
			 	data:option,
			 	success:function(data){
			 		//console.log(data);
			 		var checklogin = itour.checkLogin(data);
			 		//console.log(checklogin);
			 		//检查登录
			 		if(!checklogin){
			 			return false;
			 		}		 	
			 		if($.isFunction(callback)){
			 			callback(data);
			 		}
			 	},
			 	error:function(response, textStatus, errorThrown){
			 		try{
			 			itour.closeProgress();
			 			var data = $.parseJSON(response.responseText);
			 			//console.log(data);
				 		//检查登录
				 		if(!itour.checkLogin(data)){
				 			return false;
				 		}else{
					 		itour.alert('提示', data.msg || "请求出现异常,请联系管理员",'error');
					 	}
			 		}catch(e){
			 			itour.alert('提示',"请求出现异常,请联系管理员.",'error');
			 		}
			 	}
		});
	},
	submitForm:function(form,callback,dataType){
		var option =
			{type:'post',
			 	//url:form.attr("action"),
			 	//dataType: dataType||'json',
			 	//dataType:'script',
			 	timeout:3000,
			 	iframe: true,
			 	headers : {"ClientCallMode" : "ajax"}, //添加请求头部
			 	async:false,  //异步请求
		 	   // contentType: "application/json; charset=utf-8", 
			 	success:function(data){
			 		var result= $.parseJSON(data);
			 		if($.isFunction(callback)){
			 			callback(result);
			 		}
			 	},
			 	error:function(response, textStatus, errorThrown){
			 		try{
			 			itour.closeProgress();
			 			var data = $.parseJSON(response.responseText);
			 			console.log(data);
				 		//检查登录
				 		if(!itour.checkLogin(data)){
				 			return false;
				 		}else{
					 		itour.alert('提示', data.msg || "请求出现异常,请联系管理员",'error');
					 	}
			 		}catch(e){
			 			itour.alert('提示',"请求出现异常,请联系管理员.",'error');
			 		}
			 	}
			 }
			 itour.ajaxSubmit(form,option);
			 return false;
	},
	saveForm:function(form,callback){
	//	console.log(form.attr("action"));
		if(form.form('validate')){
			itour.progress('Please waiting','Saving...');
			//ajax提交form
			itour.submitForm(form,function(data){
				itour.closeProgress();
			 	if(data.success||data.success=="true"){
			 		if(callback){
				       	callback(data);
				    }else{
			       		itour.alert('提示','保存成功.','info');
			        } 
		        }else{
		        	console.log("aaa");
		       	   itour.alert('提示',data.msg,'error');  
		        }
			});
		 }
	},
	/**
	 * 
	 * @param {} url
	 * @param {} option {id:''} 
	 */
	getById:function(url,option,callback){
		itour.progress();
		itour.ajaxJson(url,option,function(data){
			itour.closeProgress();
			if(data.success){
				if(callback){
			       	callback(data);
			    }
			}else{
				itour.alert('提示',data.msg,'error');  
			}
		});
	},
	/**
	 * 
	 * @param {} url
	 * @param {} option {id:''} 
	 */
	loadPhotos:function(url,option,callback){
		itour.progress();
		itour.ajaxJson(url,option,function(data){
			itour.closeProgress();
			if(data.success){
				if(callback){
					//console.log("base:"+data)
			       	callback(data);
			    }
			}else{
				itour.alert('提示',data.msg,'error');  
			}
		});
	},
	deleteForm:function(url,option,callback){
		itour.progress();
		itour.ajaxJson(url,option,function(data){
				itour.closeProgress();
				if(data.success){
					if(callback){
				       	callback(data);
				    }
				}else{
					itour.alert('提示',data.msg,'error');  
				}
		});
	}
}

/* 自定义密码验证*/
$.extend($.fn.validatebox.defaults.rules, {  
    equals: {  
        validator: function(value,param){  
            return value == $(param[0]).val();  
        },  
        message: '两次输入密码不匹配.'  
    }  
});  

/*表单转成json数据*/
$.fn.serializeObject = function() {
    var o = {};
    var a = this.serializeArray();
    $.each(a, function() {
        if (o[this.name]) {
            if (!o[this.name].push) {
                o[this.name] = [ o[this.name] ];
            }
            o[this.name].push(this.value || '');
        } else {
            o[this.name] = this.value || '';
        }
    });
    return o;
}

/* easyui datagrid 添加和删除按钮方法*/
$.extend($.fn.datagrid.methods, {  
    addToolbarItem: function(jq, items){  
        return jq.each(function(){  
            var toolbar = $(this).parent().prev("div.datagrid-toolbar");
            for(var i = 0;i<items.length;i++){
                var item = items[i];
                if(item === "-"){
                    toolbar.append('<div class="datagrid-btn-separator"></div>');
                }else{
                    var btn=$("<a href=\"javascript:void(0)\"></a>");
                    btn[0].onclick=eval(item.handler||function(){});
                    btn.css("float","left").appendTo(toolbar).linkbutton($.extend({},item,{plain:true}));
                }
            }
            toolbar = null;
        });  
    },
    removeToolbarItem: function(jq, param){  
        return jq.each(function(){  
            var btns = $(this).parent().prev("div.datagrid-toolbar").children("a");
            var cbtn = null;
            if(typeof param == "number"){
                cbtn = btns.eq(param);
            }else if(typeof param == "string"){
                var text = null;
                btns.each(function(){
                    text = $(this).data().linkbutton.options.text;
                    if(text == param){
                        cbtn = $(this);
                        text = null;
                        return;
                    }
                });
            } 
            if(cbtn){
                var prev = cbtn.prev()[0];
                var next = cbtn.next()[0];
                if(prev && next && prev.nodeName == "DIV" && prev.nodeName == next.nodeName){
                    $(prev).remove();
                }else if(next && next.nodeName == "DIV"){
                    $(next).remove();
                }else if(prev && prev.nodeName == "DIV"){
                    $(prev).remove();
                }
                cbtn.remove();    
                cbtn= null;
            }                        
        });  
    }                 
});