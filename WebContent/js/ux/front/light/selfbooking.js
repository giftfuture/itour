$package('itour.lightselfbooking');
itour.lightselfbooking = function(){
	var _this = {
		formatterDate : function(date) {//得到当前日期
			var day = date.getDate() > 9 ? date.getDate() : "0" + date.getDate();
			var month = (date.getMonth() + 1) > 9 ? (date.getMonth() + 1) : "0"+ (date.getMonth() + 1);
			return date.getFullYear() + '-' + month + '-' + day;
		},
		onChangeDate: function(obj,date){  
            $(obj).prev().val(date);  
        },
        changeValidateCode:function () {  
            var timenow = new Date().getTime();//这是为了防止每次刷新的时候验证码相同
            $("#validateCode").attr("src",basePath+"RandomCodeServlet?d="+timenow);  
          }, 
		init:function(){
			$.extend($.fn.validatebox.defaults.rules,{  
			    dateValided : {  
			        validator : function(value) { //参数value为当前文本框的值
			        	var d =  _this.formatterDate(new Date());
			        //	itour.alert('提示',value +"    "+ d+"   "+(value > d),'info');
			           if(d>=value){
			        	   //itour.alert('提示','选择行程安排日期应在当前日期之后','warn');
			        	   //$("input[name='tourTime']").datebox('setValue','');  
			           }else{
			        	   return value > d;  
			           }
			        },  
			        message : '选择行程安排日期应在当前日期之后'  //
			    }  
			}); 
		}
	}
	return  _this;
}();

$(function(){
	itour.lightselfbooking.init();
});