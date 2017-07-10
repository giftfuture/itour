$package('itour.main');
itour.main = function(){
	return {
		treeSelect:function(){
			var _this = $(this);
			var title=_this.text();
			var url=_this.attr('href');
			itour.main.addTab(title,url);
			return false;
		},
		treeInit:function(){
			var  $items =  $('#tree-box').find(".menu-item");
			$items.bind('click',this.treeSelect);
		},
		addTab:function(_title,_url){
			var boxId = '#tab-box';
			if($(boxId).tabs('exists',_title) ){
				var tab = $(boxId).tabs('getTab',_title);
				var index = $(boxId).tabs('getTabIndex',tab);
				$(boxId).tabs('select',index);
				if(tab && tab.find('iframe').length > 0){  
					 var _refresh_ifram = tab.find('iframe')[0];  
				     _refresh_ifram.contentWindow.location.href=_url;  
			    } 
			}else{		
				var _content ="<iframe scrolling='auto'" +
						/*" onload=javascript:this.height=document.frames(this.name).document.body.scrollHeight+30" +*/
						" frameborder='0' src='"+_url+"' style='width:100%; height:100%'></iframe>";
				$(boxId).tabs('add',{
					    title:_title,
					    content:_content,
					    closable:true});
				
			}
		},
		menuHover:function(){
			//菜单鼠标进入效果
			$('.menu-item').hover(
				function () {
					$(this).stop().animate({ paddingLeft: "25px" }, 200,function(){
						$(this).addClass("orange");
					});
				}, 
				function () {
					$(this).stop().animate({ paddingLeft: "15px" },function(){
						$(this).removeClass("orange");
					});
				}
			);
		},
		modifyPwd:function(){
			var pwdForm = $("#pwdForm");
			if(pwdForm.form('validate')){
				var parentId =$('#search_parentId').val();
				$("#edit_parentId").val(parentId)
				itour.saveForm(pwdForm,function(data){
					$('#modify-pwd-win').dialog('close');
				    pwdForm.resetForm();
				});
			 }
		 },
		 getCookie : function (name){
		     var arr,reg=new RegExp("(^| )"+name+"=([^;]*)(;|$)");
		     if(arr=document.cookie.match(reg))
		     return unescape(arr[2]);
		     else
		     return null;
	     },
	     setCookie : function (name,value){
		     var exp = new Date();
		     exp.setTime(exp.getTime() + 60*60*1000);
		     document.cookie = name + "="+ escape (value) + ";expires=" + exp.toGMTString();
	     },
	     unDealedOrders:function(){
	    		$.ajax({
	    			url:basePath+'travelOrder/unDealedOrders',
	    			method:'post',
	    			async:false,
	    			data:{},
	    			success:function(responseText){
						var resp = $.parseJSON(responseText);
						if(resp.success||resp.success=="true"){
							$("#unDealedOrders").append("<p style='text-align:left;'>待处理订单：</p>");
							$(resp.data).each(function(idx,ex){
								if(ex.id && ex.routeId && ex.orderName){
									$("#unDealedOrders").append("<p>("+(idx+1)+").<a target='_blank' href="+basePath+"travelOrder/toQuote1/"+ex.id+"/"+ex.routeId+">"+ex.orderName+"</a></p>");
								}
							});
						}else{
							$("#unDealedOrders").append("<p style='text-align:left;'>无待处理订单：</p>");
						}
					
	    			}
				});
	     },
		init:function(){
			this.treeInit();
			this.menuHover();
			this.unDealedOrders();
		/*	$('#tab-box').tabs('add',{
			    title:'',
			    content:"<iframe scrolling='auto' frameborder='0' style='width:100%; height:100%'>"+
				"<div title='Welcome' style='padding:20px;overflow:hidden;'>"+ 
					"<div style='margin-top:20px;'>"+ 
					"</div>"+ 
					"<pre>欢迎进入主角旅行（繁体）中文版网站后台管理界面</pre>"+ 
					"<div style='margin-top:20px;' id='unDealedOrders'>"+ 
					"</div>"+ 
				"</div>"+ 
			"</iframe>",
			    closable:false});*/
			//修改密码绑定事件
			$('.modify-pwd-btn').click(function(){
				$('#modify-pwd-win').dialog('open');
			});
			$('#btn-pwd-close').click(function(){
				$('#modify-pwd-win').dialog('close');
			});
			$('#btn-pwd-submit').click(this.modifyPwd);
			
		}
	};
}();

$(function(){
	 /* if (window != top)
          top.location.href = location.href;*/
	itour.main.init();
});		