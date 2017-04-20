$package('itour.footer');
itour.footer = function(){
	var _this = {
	/*	search:function(){
			try{
				var form = $("#searchForm");
				$.post('search',{'travelStyle':$("select[name='travel_style']").combobox("getValue"),
					'rcdDays':$("select[name='vacation']").combobox("getValue"),
					'scopeAlias':$("select[name='areas']").combobox("getValue")
					},function(){
						
				});
			}catch(e){
				
			}
			return false;
		},*/
/*		travelStyle:function(){
			$.ajax({
				dataType:"json",
				url:basePath+"common/styles",
				data:{},
				type:"post",
				success:function(result){
					var data = result.rows;
					$(data).each(function(i,e){
						//console.log(data[i]);
						$("select[name='travel_style']").append("<option value='"+$(e).attr("alias")+"'>"+$(e).attr("type")+"</option>");
					});
				},
				error:function(err){
					console.log(err);
				}
			});
		},*/
		init:function(){
			if(window.top != window.self){
				window.top.location =  window.self.location;
			}
			/*_this.fbpagination(1);
			$("#searchbtn").click(function(){
				//console.log("11111");
				_this.fbpagination(1);
			});*/
			//_this.travelStyle;
			//$("#searchForm").submit(_this.search);
			//验证码图片绑定点击事件
			//var form = $("#loginForm");
			//form.submit(itour.login.toLogin);
			/*$("select[name='areas']").combobox({ 
			    url:basePath+'travelItem/allScopes', 
			    valueField:'key',    
			    textField:'value'
			});*/
		}
	}
	return _this;
}();

window.onload=function(){
	itour.footer.init();
}
/*$(function(){
	itour.footer.init();
});	*/	