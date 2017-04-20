var curIndex=0;
//时间间隔(单位毫秒)，每秒钟显示一张，数组共有5张图片放在Photos文件夹下。
var timeInterval=5000;
var arr=new Array();
arr[0]="images/Route001.jpg";
arr[1]="images/Route001.jpg";
arr[2]="images/Route002.jpg";
arr[3]="images/Route003.jpg";
arr[4]="images/Route004.jpg";
arr[5]="images/Route005.jpg";
arr[6]="images/Route006.jpg";
setInterval(changeImg,timeInterval);
function changeImg()
{
	//$("tr input[type='button']").css("background","red");
    var obj=document.getElementById("banner-index");
    if (curIndex==arr.length-1){
        curIndex=1;
    }else{
        curIndex+=1;
    }
    obj.src=arr[curIndex];
    $("tr input[value="+curIndex+"]").css("background","white");
}
function changePho(i){
	//$("tr input[type='button']").css("background","red");
	var obj=document.getElementById("banner-index");
	obj.src=arr[i.value];
	$(i).css("background","white");
}
function fbpagination(pageno){
    var element = $('#fbpage');
    //  var route = $("input[name='idrt']").val();
    var travel_style = $("#travel_style").combobox('getValue');			
    var vacation = $("#vacation").combobox('getValue');
    var areas = $("#areas").combobox('getValue'); 
  //  console.log(travel_style+"  "+vacation+"   "+areas);
  	$.post(basePath+"searchRtResult",{'pageNo':pageno,'travel_style':travel_style,'vacation':vacation,'areas':areas},
	function(responseText){
				//if(responseText.success){
  					//console.log(responseText);
					responseText = $.parseJSON(responseText);
					//console.log(responseText.result);
					var searchRts = responseText.result.records;
					var html="<tr>";
					$(searchRts).each(function(i,e){
						//console.log(data[i]);
						html+=(i!=0&&i%4==0?"</tr><tr>":"")+
				       // "<td valign='top'>" +
				       // "<table width='353' border='0' align='left' cellpadding='0' cellspacing='0' class='f14-gao1'>"+
			           // "<tr>"+
			           //   "<td><table width='300' border='0' align='left' cellpadding='0' cellspacing='0'>"+
			             //     "<tr>"+
			            //        "<td width='57'><img src='images/icon-01.jpg' width='57' height='43' /></td>"+
			            //      "</tr>"+
			            //  "</table></td>"+
			           // "</tr>"+
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
			          //  "</tr>";
			       // "</table></td>";
					});
					//console.log(html);
					// <tbody id="fbcontent">
					$("#fbcontent").html("");
					//$("table[name='searchRtstb'] tbody").html('');
					//$("#fbcontent").html(html+"</tr>");
		   			$("table[name='searchRtstb'] tbody").append(html+"</tr>");
	/*				var shhtml="";
					var showhappy = responseText.showhappy;
					if(showhappy){
						shhtml+= "<tr>"+
					        "<td><a href='"+basePath+"showhappy/detail/"+(showhappy.shCode?showhappy.shCode:"")+"'>"+(showhappy.title?showhappy.title:"")+"</a>"+
					        "<a href='"+basePath+"showhappy/detail/"+(showhappy.shCode?showhappy.shCode:"")+"'><img src='"+basePath+(showhappy.cover?showhappy.cover:"")+"' width='353' height='166' /></a></td>"+
					      "</tr>"+
					      "<tr>"+
					        "<td><p class='f12-gao1'>"+(showhappy.title?showhappy.title:"")+"<span class='STYLE6'>"+   
					             (showhappy.shortContent?showhappy.shortContent:"")+" <a href='"+basePath+"showhappy/main'>More》》</a></span></p>"+
					       "</td>"+
					      "</tr>";
					}
					$("table[name='showhappytb'] tbody").html('');
					$("table[name='showhappytb'] tbody").append(shhtml);
					var hotspotshtml="<tr>";
					var hotrtVos = responseText.hotrtVos;
					if(hotrtVos){
						$(hotrtVos).each(function(i,e){
							if(i%2==0){
								hotspotshtml+="</tr><tr>";
							}
							hotspotshtml+="<td><img src='"+basePath+(e.cover?e.cover:"")+"' width='175' height='168' title='"+(e.title?e.title:"")+"' /></td>";
						})
					}
					hotspotshtml+="</tr>";
					$("table[name='hotspots'] tbody").html('');
					$("table[name='hotspots'] tbody").append(hotspotshtml);*/
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
							 /*  pageUrl: function(type, page, current){
								   $("#fbcontent").empty();  
								   return fbpagination(page.pageNo);
								   //return basePath+"feedback/pagination?route="+route+"&pageNo="+page; //跳转到选定页面
							   },*/
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
				           /* ok(!element.hasClass('pagination-lg'),"Root element shouldn't have pagination-lg class");
				            ok(!element.hasClass('pagination-sm'),"Root element shouldn't have pagination-sm class");
				            var list = element.children();
				            for(var i=0;i < list.length;i++)
				            {
				                var item = $(list[i]);
				                ok(item.is("li"),"Element "+i+" should be li");
				            }
				            ok(element.hasClass('pagination-sm'),"Root element should have pagination-sm class");*/
				//}
			}/*,
			beforeSend:function(data) { 
				$("#fbcontent").empty(); 
			  }, 
			error:function(err){
				console.log(err);
			}*/
		);
	}
window.onload=function(){
	//fbpagination(1);
	$("#searchbtn").click(function(){
		fbpagination(1);
	});
}
/*$(function(){
	 
});*/