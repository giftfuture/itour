$package('itour.footer');
itour.footer = function(){
	return {
		search:function(){
			try{
				var form = $("#searchForm");
				$.post('/travelItem/searchTravelItem',{'travelStyle':$("select[name='travel_style']").val(),
					'rcdDays':$("select[name='vacation']").val(),
					'scope':$("select[name='areas']").val()
					},function(){
					
				});
			}catch(e){
				
			}
			return false;
		},
		travelStyle:function(){
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
		},
		init:function(){
			if(window.top != window.self){
				window.top.location =  window.self.location;
			}
			//验证码图片绑定点击事件
			//var form = $("#loginForm");
			//form.submit(itour.login.toLogin);
		}
	}
}();

$(function(){
	itour.footer.init();
	itour.footer.travelStyle();
});		