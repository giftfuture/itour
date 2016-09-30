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
				type:'post',
				url:'/travelStyle/allData',
				success:function(result){
					if(result != null){
						var rows = result.rows;
						$(rows).each(function(e){
							$("select[name='travel_style']").append("<option value='"+e.id+"'>"+e.type+"</option>");
						});
					}
				},
				error:function(e){
					console.log(e);
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