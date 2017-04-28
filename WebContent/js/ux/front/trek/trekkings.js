$package('itour.trekkings');
itour.trekkings = function(){
	var _this = {
			fbpagination:function (pageno){
			    var element = $('#fbpage');
			    //  var route = $("input[name='idrt']").val();
			    var travel_style = $("#travel_style").combobox('getValue');			
			    var vacation = $("#vacation").combobox('getValue');
			    var areas = $("#areas").combobox('getValue'); 
			  //  console.log(travel_style+"  "+vacation+"   "+areas);
			  	$.post(basePath+"searchRtResult",{'pageNo':pageno,'travel_style':travel_style,'vacation':vacation,'areas':areas},
				function(responseText){
								responseText = $.parseJSON(responseText);
								var searchRts = responseText.result.records;
								var html="<tr>";
								$(searchRts).each(function(i,e){
									html+=(i!=0&&i%4==0?"</tr><tr>":"")+
						            "<td><table><tr>"+
						              "<td><a href='"+basePath+(e.travelStyleAlias?e.travelStyleAlias:"")+"/"+(e.travelStyleAlias?e.travelStyleAlias:"")+"/"+(e.alias?e.alias:"")+"'><span class='STYLE7'>"+(e.title?e.title:"")+"</span></a></td>"+
						            "</tr>"+
						            "<tr>"+
						              "<td><a href='"+basePath+(e.travelStyleAlias?e.travelStyleAlias:"")+"/"+(e.travelStyleAlias?e.travelStyleAlias:"")+"/"+(e.cover?e.cover:"")+"'><img src='"+basePath+""+(e.cover?e.cover:"")+"' width='353' height='166' /></a></td>"+
						            "</tr>"+
						            "<tr>"+
						              "<td class='STYLE8'>"+
						             (e.shortContent?e.shortContent:"")+"<br><a href='"+basePath+(e.travelStyleAlias?e.travelStyleAlias:"")+"/main'>More》》</a>"+
						              "</td></tr></table></td>";
								});
								$("#fbcontent").html("");
					   			$("table[name='searchRtstb'] tbody").append(html+"</tr>");
								   var options = {
										   bootstrapMajorVersion: 3, //bootstrap版本
										   size: 'normal',
										   itemTexts: function (type, page, current) {
											   switch (type) {
												   case "first":
												   return "首页";
												   case "prev":
												   return "<i class='fa fa-caret-left'></i> 上一页";
												   case "next":
												   return "下一页 <i class='fa fa-caret-right'></i>";
												   case "last":
												   return "末页";
												   case "page":
												   return page;
											   }
										   },
										   useBootstrapTooltip:true,
										   onPageClicked:function(event, originalEvent, type, page){
											   $("#fbcontent").empty();  
											   return fbpagination(page);
										   },
										   numberOfPages: 6, //显示“第几页”的选项数目
										   currentPage: responseText.result.pager.pageId, //当前页数
										   totalPages:responseText.result.pager.pageCount, //总页数
										//   shouldShowPage:true,//是否显示该按钮
										   }
							            element.bootstrapPaginator(options);
						}/*,
						beforeSend:function(data) { 
							$("#fbcontent").empty(); 
						  }, 
						error:function(err){
							console.log(err);
						}*/
					);
				},
		init:function(){
			_this.fbpagination(1);
		}
	}
	return  _this;
}();

$(function(){
	itour.trekkings.init();
});