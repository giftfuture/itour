var curIndex=0;
//时间间隔(单位毫秒)，每秒钟显示一张，数组共有5张图片放在Photos文件夹下。
var timeInterval=2000;
var arr=new Array();
//arr[0]="images/Route001.jpg";
arr[1]="images/Route001.jpg";
arr[2]="images/Route002.jpg";
arr[3]="images/Route003.jpg";
arr[4]="images/Route004.jpg";
arr[5]="images/Route005.jpg";
arr[6]="images/Route006.jpg";
setInterval(changeImg,timeInterval);
function changeImg()
{
	$("tr input[type='button']").css("background","red");
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
	$("tr input[type='button']").css("background","red");
	
	var obj=document.getElementById("banner-index");
	obj.src=arr[i.value];
	$(i).css("background","white");
}