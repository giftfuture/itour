var curIndex=0;
//时间间隔(单位毫秒)，每秒钟显示一张，数组共有5张图片放在Photos文件夹下。
var timeInterval=5000;
var arr=new Array();
var links = new Array();
var titles = new Array();
/*arr[0]="images/Route001.jpg";
arr[1]="images/Route001.jpg";
arr[2]="images/Route002.jpg";
arr[3]="images/Route003.jpg";
arr[4]="images/Route004.jpg";
arr[5]="images/Route005.jpg";
arr[6]="images/Route006.jpg";*/
$.ajax({
	url:basePath+"adLink/allAdLink",
	method:'post',
	dataType:'json',
	success:function(result){
		$(result).each(function(i,e){
			arr[i]=e.advertise;
			links[i]=e.link;
			titles[i]=e.title;
		});
	},error:function(){
		
	}
});
setInterval(changeImg,timeInterval);
var bannerindex=document.getElementById("banner-index");
function changeImg()
{
	//$("tr input[type='button']").css("background","red");
    if (curIndex==arr.length-1){
        curIndex=0;			
    }
    bannerindex.src=basePath+arr[curIndex];
    bannerindex.title=titles[curIndex];
    $(bannerindex).parents('a').attr("href",links[curIndex]);
  //  $("a").removeClass('btn-item__cur');
    $(bannerindex).parents("tr").next().find("a").removeClass('btn-item__cur');
    $(bannerindex).parents("tr").next().find("a").eq(curIndex).addClass('btn-item__cur');
   // $("a[value="+curIndex+"]").css("background","white");
    curIndex++;
}
function browserRedirect() {
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
};

/*function changePho(i){
	//$("tr input[type='button']").css("background","red");
	bannerindex.src=arr[i.value];
	$(i).css("background","white");
}*/

window.onload=function(){
	// browserRedirect();
	//fbpagination(1);
	$(bannerindex).parents("tr").after(" <tr><td style='text-align:left'><a></a><a></a><a></a><a></a><a></a><a></a></td></tr>");
	$(bannerindex).parents("tr").next().find("a").addClass("btn-item");
	$(bannerindex).parents("tr").next().find("a").each(function(i,e){
		$(this).click(function(){				
			bannerindex.src=arr[i];
			$(bannerindex).parents("tr").next().find("a").removeClass('btn-item__cur');
			$(this).addClass('btn-item__cur');
		})
	}); //onclick="changePho(this)"
}
/*$(function(){
	 
});*/