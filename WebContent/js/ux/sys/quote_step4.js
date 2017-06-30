$package('itour.serverquotestep4');
itour.serverquotestep4 = function(){
	var _this = {
			printff:function(){
				//window.print();
				//document.execCommand("print") ;
			    html2canvas(document.innerHTML, {
			        onrendered: function(canvas) {
			            //通过html2canvas将html渲染成canvas，然后获取图片数据
			            var imgData = canvas.toDataURL('image/jpeg');
			            //初始化pdf，设置相应格式
			            var doc = new jsPDF("p", "mm", "a4");
			            //这里设置的是a4纸张尺寸
			            doc.addImage(imgData, 'JPEG', 0, 0,210,297);
			            //输出保存命名为content的pdf
			            doc.save(document.title+new Date().getTime()+'.pdf');
			        }
			    });
			},
			copyUrl:function(){
				var clipBoardContent=window.location.href;
				document.getElementById("flashcopier").innerHTML = clipBoardContent;
				var client =new ZeroClipboard(document.getElementById("copyurl"));
				// 当Flash SWF文件加载完成并准备就绪时触发ready事件
				//client.on("ready", function(){ alert("加载完成!"); });//beforecopy,copy
				// 当触发copy事件时，设置用于复制的文本数据
				//复制成功： 
				client.on( "aftercopy", function(){
				    itour.alert('提示', "复制成功！",'info');
				});
			},
			addFavorite:function () {
				var url = window.location;
				var title = document.title;
				//var ua = navigator.userAgent.toLowerCase();window.external.ImportExportFavorites(true,)
				var ctrl = (navigator.userAgent.toLowerCase()).indexOf('mac') != -1 ? 'Command/Cmd': 'CTRL';
				try{
					if (document.all) { //IE类浏览器
						try {
							window.external.addFavorite(url	,title);
							//window.external.ImportExportFavorites(true);
						}
						catch (e){
							try{
								window.external.toString(); //360浏览器不支持window.external，无法收藏
								window.alert("国内开发的360浏览器等不支持主动加入收藏。\n您可以尝试通过浏览器菜单栏 或快捷键 ctrl+D 试试。");
							}
							catch (e){
								window.external.addToFavoritesBar(url,title);  //IE8
							}
						}
					}else if (window.sidebar) { //firfox等浏览器
						window.sidebar.addPanel(url	,title, "");
					}else if(window.opera){
						alert('opera您可以尝试通过快捷键' + ctrl + ' + D 加入到收藏夹~');
					}else{
						alert('您可以尝试通过快捷键' + ctrl + ' + D 加入到收藏夹~');
					}
				}
				catch (e){
					window.alert("因为IE浏览器存在bug，添加收藏失败！\n解决办法：在注册表中查找\n HKEY_CLASSES_ROOT\\TypeLib\\{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}\\1.1\\0\\win32 \n将 C:\\WINDOWS\\system32\\shdocvw.dll 改为 C:\\WINDOWS\\system32\\ieframe.dll ");
				}
			},
			generateReportFun:function(nowtime,progressBar,intervalId,reportdiv,tordername,idrt){
				 var totalTime = 35;
				 return function(){ 
				$.ajax({url:'travelOrder/generateReport',method:'post',data:{'formContent':reportdiv,'tordername':tordername,'idrt':idrt,'basePath':basePath},
					dataType:'json',
					beforeSend: function(){
						// Handle the beforeSend event
					},
					complete:function(){
						
					},
					success:function(responseText){
					console.log(responseText);
					var result = $.parseJSON(responseText);
					//console.log(result);
					//itour.closeProgress();
					//clearInterval(intervalId);  
	               /* if(progressBar != null){  
	                    progressBar.progressbar("setValue",100);      
	                }*/
	                if(new Date().getTime()-nowtime <= 2*1000*totalTime){  
	                    var value = parseInt((parseInt(new Date().getTime()-nowtime) / 35*1000) * 100);
	                    progressBar.progressbar('setValue',value);  
	                }
	                console.log(progressBar.progressbar('getValue'));
	                if(progressBar.progressbar('getValue')>=100){
	                    setTimeout(function(){  
		                    $.messager.progress('close');  
		                },800) 
		                //console.log(result);
						if(result && result.success && result.msg){
							itour.alert("提示",result.msg,"info",function(){
								$("a[name='viewReport']").attr("href",basePath+result.data);
								$("a[name='viewReport']").show();
								itour.confirm("操作提示", "回到订单管理页面？", function (data) {  
									if (data) {  
										document.forms["back_form"].submit();
									}  
								});
							});
						}else{
							itour.alert("提示","生成报价单出错，请重新操作或联系管理员。","info",function(){});
						}
	                }
	                /*if(progressBar != null){  
	                    progressBar.progressbar("setValue",100);      
	                } */
	           
				}});
		 }},
		 msgProgress:function(){
				$.messager.progress({title:"dddddddddddddddd",msg:'BBBBB', interval:0,style:{
                	//left:1000,
                	top:-3000,
                	right:''//,
            		//top:'',
            		//bottom:document.body.scrollTop+document.documentElement.scrollTop
                	//right:'',
					//top:document.body.scrollTop+document.documentElement.scrollTop,
					//bottom:''
				}});
		 },
		init:function(){
			$("a.imgBorder img").on('click',function(){
				$(this).parents("tr").prev().find("td img").attr("src",$(this).attr("src"));
				//$("td[name='magnifying'] img").attr("src",$(this).attr("src"));
			});
			$("a.imgBorder img").on('mouseover',function(){
				//$("td[name='magnifying'] img").attr("src",$(this).attr("src"));
				$(this).parents("tr").prev().find("td img").attr("src",$(this).attr("src"));
			});
		//	$.messager.alert({title:"aaaaaaaa",msg:'aaaaaaaaa'});
			//generateReport
			$("span[name='generateReport']").click(function(){
			    var intervalId = null;  
		        var progressBar = null;  
				//itour.progress('请稍侯','信息提交中...', interval:0);
				var nowtime = new Date().getTime();
			    $("#divProgressbar").progressbar({value: 0});
			   // nowtime,progressBar,intervalId,document.getElementById("reportdiv").innerHTML,$("input[name='tordername']").val(),$("input[name='idrt']").val()
				$.ajax({url:'travelOrder/generateReport',method:'post',async:false,data:{'formContent':document.getElementById("reportdiv").innerHTML,'tordername':$("input[name='tordername']").val(),'idrt':$("input[name='idrt']").val(),'basePath':basePath},
					dataType:'json',
					beforeSend: function(){
						var totalTime = 35;	
					},
					complete:function(){
						/* if(newValue <= 100) setTimeout(updateProgressbarValue, 10);
	                	}*/
						intervalId = setInterval(function(){
								if(new Date().getTime()-nowtime < 1000*totalTime){  
			                    var vv = parseInt((parseInt(new Date().getTime()-nowtime) / totalTime*1000) * 100);
			                    $("#divProgressbar").progressbar("option","value",vv);  
			                    console.log($("#divProgressbar").progressbar("option",'value'));
			                }}
			                 ,500);
						if(progressBar.progressbar("option",'value') >= 100){
							clearInterval(intervalId);
							setTimeout(function(){  
								$("#divProgressbar").progress('close');  
							},800);
						}
					},
					success:function(responseText){
					console.log(responseText);
					var result = $.parseJSON(responseText);
					//console.log(result);
					//itour.closeProgress();
					//clearInterval(intervalId);  
	               /* if(progressBar != null){  
	                    progressBar.progressbar("setValue",100);      
	                }*/
		                //console.log(result);
						if(result && result.success && result.msg){
							itour.alert("提示",result.msg,"info",function(){
								$("a[name='viewReport']").attr("href",basePath+result.data);
								$("a[name='viewReport']").show();
								itour.confirm("操作提示", "回到订单管理页面？", function (data) {  
									if (data) {  
										document.forms["back_form"].submit();
									}  
								});
							});
						}else{
							itour.alert("提示","生成报价单出错，请重新操作或联系管理员。","info",function(){});
						}
	                }
	                /*if(progressBar != null){  
	                    progressBar.progressbar("setValue",100);      
	                } */
				});
				//itour.serverquotestep4.msgProgress();
	/*			$.messager.progress({  
                    title:'请稍后',  
                    msg:'信息提交中......',  
                    interval:0,
                    style:{
                    	left:0,
                    	top:0,
                    	//right:'',
    					//top:document.body.scrollTop+document.documentElement.scrollTop,
    					//bottom:''
    				}
                });  */
                //progressBar = $.messager.progress('bar');  
                //intervalId = window.setInterval(itour.serverquotestep4.generateReportFun(nowtime,progressBar,intervalId,document.getElementById("reportdiv").innerHTML,$("input[name='tordername']").val(),$("input[name='idrt']").val()),500);
                
			});
		}
	}
	return  _this;
}();

$(function(){
	   itour.serverquotestep4.init();
	   itour.serverquotestep4.copyUrl();
	   var homeurl = window.location.href;
	   /*if (window != top)
           top.location.href = location.href;*/
});