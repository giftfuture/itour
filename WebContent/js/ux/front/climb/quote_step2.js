$package('itour.climbstep2');
itour.climbstep2 = function(){
	var _this = {
			checkedAll:function (name){//全选
				  var names=document.getElementsByName(name);
				  var len=names.length;
				  if(len>0){
				   for(var i=0;i<len;i++)
				   names[i].checked=true;
				  }
			},
			uncheckedAll:function (name){//全不选
					var names=document.getElementsByName(name);
					var len=names.length;
					if(len>0){
					    for(var i=0;i<len;i++)
					    names[i].checked=false;
					  }
			},
			onlyNonNegative:function (obj) {
				 var inputChar = event.keyCode;
				 //alert(event.keyCode);
				 //1.判断是否有多于一个小数点
				 if(inputChar==190 ) {//输入的是否为.
				  var index1 = obj.value.indexOf(".") + 1;//取第一次出现.的后一个位置
				  var index2 = obj.value.indexOf(".",index1);
				  while(index2!=-1) {
				   //alert("有多个.");
				   
				   obj.value = obj.value.substring(0,index2);
				   index2 = obj.value.indexOf(".",index1);
				  }
				 }
				 //2.如果输入的不是.或者不是数字，替换 g:全局替换
				 obj.value = obj.value.replace(/[^(\d|.)]/g,"");
		},
		init:function(){
			//$("input[name='adults']").on('keyup',_this.onlyNonNegative);
			//$("input[name='children']").on('keyup',_this.onlyNonNegative);
			$("input[name='adults']").numberbox({  
				 onChange:function(){ 	
					_this.onlyNonNegative;
					if(!isNaN($(this).val())){
						var adultsprice = $("input[name='adultsprice']").val();
						var result = parseFloat(adultsprice)*parseInt($(this).val());
						$.parser.parse($("input[name='quoteadults']").parent());
						$("#quoteadults").numberbox('setValue',result);
						$("#quoteticketadults").numberbox('setValue',350*parseInt($(this).val()));
					}
				 }
			});
			$("input[name='children']").numberbox({  
				 onChange:function(){
					_this.onlyNonNegative;
					if(!isNaN($(this).val())){
						var childrenprice = $("input[name='childrenprice']").val();
						var result =  parseFloat(childrenprice)*parseInt($(this).val());
						$("#quotechildren").numberbox('setValue',result);
						$("#quoteticketchildren").numberbox('setValue',0*parseInt($(this).val()));
					}
				 }
			});
			//$("input[name='quoteticketadults']").numberbox('setValue',);
			$("input[name='route_checkall']").click(function(){
				if($(this).attr("checked")){
					_this.checkedAll("breakfast");
					_this.checkedAll("lunch");
					_this.checkedAll("dinner");
			 }else{
					_this.uncheckedAll("breakfast");
					_this.uncheckedAll("lunch");
					_this.uncheckedAll("dinner");
			 }
			});
		}
	}
	return  _this;
}();

/*window.onload=function(){
	itour.climbstep2.init();
}*/
$(function(){
	itour.climbstep2.init();
});