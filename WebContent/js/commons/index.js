$package('itour.index');
itour.index = function(){
	var _this = {
		loadLinks:function(arr,links,titles){
			$.ajax({
				url:basePath+"adLink/allAdLink",
				method:'post',
				dataType:'json',
				async:false,
				cache: false,
				success:function(result){
					//console.log(result);
					if(result){
						$(result).each(function(i,e){
							//console.log(e.advertise+"   "+e.adlink);
							arr[i]=e.advertise;
							if(e.video==1){
								links[i] = basePath+'video-'+ e.adlink;
							}else{
								links[i]=e.adlink;
							}
							titles[i]=e.title;
							//console.log(links);
						});
				    }
				},error:function(XMLHttpRequest, textStatus, errorThrown){
					itour.alert("提示","加载首页链接出错"+XMLHttpRequest.status+"	"+XMLHttpRequest.readyState+"   "+errorThrown+textStatus,"info");
				}
			})
		},
		changeImg:function (curIndex,arr,titles,links){
			//$("tr input[type='button']").css("background","red");
		    if (curIndex==arr.length){
		        curIndex=0;			
		    }
		    document.getElementById("banner-index").src=basePath+arr[curIndex];
		    document.getElementById("banner-index").title=titles[curIndex];
		    $(document.getElementById("banner-index")).parents('a').attr("href",links[curIndex]);
		  //  $("a").removeClass('btn-item__cur');
		    $(document.getElementById("banner-index")).parents("tr").next().find("li").removeClass('btn-item__cur');
		    $(document.getElementById("banner-index")).parents("tr").next().find("li").eq(curIndex).addClass('btn-item__cur');
		   // $("a[value="+curIndex+"]").css("background","white");
		   ++curIndex;
		  // console.log(curIndex);
		   return curIndex;
		},
		browserRedirect:function () {
		    var sUserAgent = navigator.userAgent.toLowerCase();
		    var bIsIpad = sUserAgent.match(/ipad/i) == "ipad";
		    var bIsIphoneOs = sUserAgent.match(/iphone os/i) == "iphone os";
		    var bIsMidp = sUserAgent.match(/midp/i) == "midp";
		    var bIsUc7 = sUserAgent.match(/rv:1.2.3.4/i) == "rv:1.2.3.4";
		    var bIsUc = sUserAgent.match(/ucweb/i) == "ucweb";
		    var bIsAndroid = sUserAgent.match(/android/i) == "android";
		    var bIsCE = sUserAgent.match(/windows ce/i) == "windows ce";
		    var bIsWM = sUserAgent.match(/windows mobile/i) == "windows mobile";
		    document.writeln("您的浏览设备为：");
		    if (bIsIpad || bIsIphoneOs || bIsMidp || bIsUc7 || bIsUc || bIsAndroid || bIsCE || bIsWM) {
		        document.writeln("phone");
		    } else {
		        document.writeln("pc");
		    }
		},
		init:function(){
			var docwidth = document.documentElement.clientWidth;
			var padwidth= (docwidth-1350)/2;
			var paddingwidth = (docwidth-1140)/2;
		/*	$(".commontb").css("padding-left",padwidth);
			$(".frametb").css("padding-left",paddingwidth);*/
			$(".commontb").css("width",1350);
			$(".frametb").css("width",1140);
			// browserRedirect();
			//fbpagination(1);<!--padding-left:800px;float:left;-->
			var curIndex=0;
			//时间间隔(单位毫秒)，每秒钟显示一张，数组共有5张图片放在Photos文件夹下。
			var timeInterval=5000;//每5秒切换
			var arr=new Array();
			var links = new Array();
			var titles = new Array();
			_this.loadLinks(arr,links,titles);
			var bannerindex=document.getElementById("banner-index");
			//console.log(links+"   "+bannerindex);
		
			//var intervalid = setInterval("alert(111111111)",timeInterval);
			var exchange = "<tr><td style='text-align:center;width:100%;float:middle;' height='33px' colspan='2'><ol style='margin-top:-3%;padding-left:43%;display:table;text-align:center;width:100%;float:middle'>";
			for(var i =0;i<arr.length;i++){
				exchange+="<li style=''></li>";
			}
			exchange+="</ol></td></tr>";
			$(bannerindex).parents("tr").after(exchange);
			$(bannerindex).parents("tr").next().find("li").addClass("btn-item");
			$(bannerindex).parents("tr").next().find("li").each(function(i,e){
				//$(this).click(function(){
				$(this).bind("click",function(){
					console.log(111111111111111);
		   			//clearInterval(intervalid);
		   			//intervalid =
	   				setInterval(_this.changeImg(i,arr,titles,links),parseInt(timeInterval));
				/*	bannerindex.src=arr[i];
					bannerindex.title=titles[i];
				  	$(bannerindex).parents('a').attr("href",links[i]);
					$(bannerindex).parents("tr").next().find("li").removeClass('btn-item__cur');
					$(this).addClass('btn-item__cur');
					var now = new Date();
					var exitTime = now.getTime() + 1000;
					while (true) {
						if (now.getTime() > exitTime)
							return;
					}*/
				})
			})
			setInterval(function(){
				curIndex = _this.changeImg(curIndex,arr,titles,links);
			},parseInt(timeInterval));
		}
	}
return _this;
}();

/*window.onload=function(){
	itour.index.init();
	//setInterval(itour.index.changeImg(parseInt(curIndex),arr,titles,links),parseInt(timeInterval));
}*/
$(function(){
	itour.index.init();
});