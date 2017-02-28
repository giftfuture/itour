$package('itour.travelItem');
itour.travelItem = function(){
	var _box = null;
	var _this = {
			uploadPhotoAction:'uploadPhoto',
			uploadPhotoForm:function(){
				return $("#multiDataForm");
			},
			uploadPhotoWin:function(){//upload-photo
				return $("#upload-photo");
			},
			savePhoto:function(){
					itour.progress();//缓冲条
					_this.uploadPhotoForm().attr('action',_this.uploadPhotoAction);
					_this.uploadPhotoForm().ajaxForm();
					itour.saveForm(_this.uploadPhotoForm(),function(data){
						///console.log(data);
						//if(data.success){	
							$.messager.alert('提示', data.msg, 'info',function(){								
								itour.closeProgress();//关闭缓冲条
								_this.uploadPhotoWin().dialog('close');
							})
						//}
					});
			},
			initUploadForm:function(){
				_this.uploadPhotoWin().find("#fileSubmit").click(function(){
					_this.savePhoto();
				});
				_this.uploadPhotoWin().find("#win-close").click(function(){	
					$.messager.confirm('提示','您确定关闭当前窗口吗?',function(r){  
					    if (r){  
					     	_this.uploadPhotoWin().dialog('close');
					    }  
					});
				});
			},
			editPhotoAction:'saveeditedPhoto',
			editPhotoForm:function(){
				return $("#editPhotoForm");
			},
			editPhotoWin:function(){//upload-photo
				return $("#edit-photo");
			},
			submitPhoto:function(){
					itour.progress();//缓冲条
					_this.editPhotoForm().attr('action',_this.editPhotoAction);
					itour.saveForm(_this.editPhotoForm(),function(data){
						itour.closeProgress();//关闭缓冲条
						_this.editPhotoWin().dialog('close');
					});
			},
			loadPhotoList:function(id){
				itour.loadPhotos('editPhoto',{'id':id},function(data){
					itour.closeProgress();
					var images = "";
					if(data.success){
						//console.log(data.uris);
						for(var i in data.uris){
						  images+='<img alt="图片浏览" src="'+basePath+data.uris[i]+'" style="width:50px;height:50px;">';	
						}
					}
					$("#previewPhotos").html(images);
					_this.editPhotoWin().dialog('open'); 
					//_this.editPhotoWin().window('open'); 
					//回调函数
					/*if(jQuery.isFunction(callback)){
						callback(result);
					}*/                        																									
				
				});
			},
			initEditForm:function(){
				_this.editPhotoWin().find("#editPhotoSubmit").click(function(){
					_this.submitPhoto();
				});
				_this.editPhotoWin().find("#editwin-close").click(function(){	
					$.messager.confirm('提示','您确定关闭当前窗口吗?',function(r){  
					    if (r){  
					     	_this.editPhotoWin().dialog('close');
					    }  
					});
				});
			},
			toList:function(parentId){
				_box.form.search.resetForm();
				if(parentId){
					$('#search_parentId').val(parentId);
					$('#btnback').linkbutton('enable');
					_box.grid.datagrid('hideColumn','childMenus');
				}else{
					$('#btnback').linkbutton('disable');
					_box.grid.datagrid('showColumn','childMenus');
				}
				_box.handler.refresh();
		},
		//设置默认按钮数据
		addDefBtns:function(){
			var defaultBtns= [
				{"btnName":"添加","menuid":"13","actionUrls":"save","btnType":"add"},
				{"btnName":"修改","menuid":"13","actionUrls":"getId|save","btnType":"edit"},
				{"btnName":"删除","menuid":"13","actionUrls":"delete","btnType":"remove"}
			];
			var tbline = $(".tb-line:visible");
			var btnType = $("input[name='btnType']",tbline);
			$.each(defaultBtns,function(i,btn){
				var isExists = false;
				//判断按钮类型是否存在
				if(btnType.length > 0){
					for(var i =0; i < btnType.length; i++){
						if(btnType.eq(i).val() == btn.btnType){
							isExists = true;
							break;
						}
					}
				}
				if(!isExists){
					_this.addLine(btn);
				}
			});
		},
		addLine: function(data){
			var table = $("#btn-tb");
			var	html = "<tr class='tb-line'>";
			//html+=	   "	<td align='center'><span  class='newFlag red'>*</span></td>";
			html+=	   "	<td><input name=\"btnName\" class=\"easyui-validatebox text-name\" style=\"width:100%\" data-options=\"required:true\"></td>";
			html+=	   "	<td><input name=\"btnType\" class=\"easyui-validatebox text-name\" style=\"width:100%\" data-options=\"required:true\"></td>";
			html+=	   "	<td><input name=\"actionUrls\" class=\"easyui-validatebox text-desc\" style=\"width:100%\"  ></td>";
			html+=	   "	<td align='center'><a class=\"easyui-linkbutton remove-btn\"  iconCls=\"icon-remove\" plain=\"true\"></a>";
			html+=	   "	<input class=\"hidden\" name=\"btnId\">";
			html+=	   "	<input class=\"hidden\" name=\"deleteFlag\">";
			html+=	   "	</td>";
			html+=	   "</tr>";
			var line = $(html);
			//版定删除按钮事件
			$(".remove-btn",line).click(function(){
				itour.confirm('提示','你确定删除当前记录吗?',function(r){
					if(r){
						_this.delLine(line);
					}
				})
			});
			if(data){
				if(data.id){
					$(".newFlag",line).html(''); //清空新增标记
				}
				$("input[name='btnId']",line).val(data.id);
				$("input[name='btnName']",line).val(data.btnName);
				$("input[name='btnType']",line).val(data.btnType);
				$("input[name='actionUrls']",line).val(data.actionUrls);
			}
			$.parser.parse(line);//解析esayui标签
			table.append(line);
		},
		//删除全部
		delAllLine:function(b){
			if(b){
				$(".tb-line").remove();
			}else{
				$(".tb-line").each(function(i,line){
					_this.delLine($(line));
				});
			}
		},
		//删除单行
		delLine:function(line){
			if(line){
				var btnId = $("input[name='btnId']",line).val();
				if(btnId){
					$("input[name='deleteFlag']",line).val(1); //设置删除状态
					line.fadeOut();
				}else{
					line.fadeOut("fast",function(){
						 $(this).remove();
					});
				}
			}
		},
	config:{
		event:{
			add:function(){
				_box.handler.add();
			},
			edit:function(){
				_box.handler.edit();
			},
			uploadImg:function(){
				_box.handler.uploadImg();
			}
		},
		action:{
				save:'save', //新增&修改 保存Action  
				getId:'getId',//编辑获取的Action
				remove:'delete',//删除数据的Action
				uploadPhoto:'uploadPhoto'
			},
  			dataGrid:{
  				title:'旅行项目',
	   			url:'dataList.json',
	   			columns:[[
					{field:'id',checkbox:true},
					{field:'itemCode',title:'项目代码',align:'center',sortable:true,
						formatter:function(value,row,index){
							if((row.itemCode+"").length>30){
								return (row.itemCode+"").substring(0,30)+"....";
							}else{									
								return row.itemCode;
							}
						}
					},
					{field:'item',title:'项目名称',align:'center',sortable:true,
							formatter:function(value,row,index){
								if((row.item+"").length>30){
									return (row.item+"").substring(0,30)+"....";
								}else{									
									return row.item;
								}
							}
						},
					{field:'elevation',title:'海拔',align:'center',sortable:true,
							formatter:function(value,row,index){
								if((row.elevation+"").length>30){
									return (row.elevation+"").substring(0,30)+"....";
								}else{									
									return row.elevation;
								}
							}
						},
					{field:'content',title:'详细描述',align:'center',sortable:true,
							formatter:function(value,row,index){
								if((row.content+"").length>30){
									return (row.content+"").substring(0,30)+"....";
								}else{									
									return row.content;
								}
							}
						},
					{field:'photos',title:'美图',align:'center',sortable:true,
							formatter:function(value,row,index){
								if((row.photos+"").length>30){
									return (row.photos+"").substring(0,30)+"....";
								}else{									
									return row.photos;
								}
							}
					},
					{field:'mileage',title:'里程',align:'center',sortable:true,
							formatter:function(value,row,index){
								if((row.mileage+"").length>30){
									return (row.mileage+"").substring(0,30)+"....";
								}else{									
									return row.mileage;
								}
							}
						},
					{field:'scope',title:'所属区域',align:'center',sortable:true,
							formatter:function(value,row,index){
								if((row.scope+"").length>30){
									return (row.scope+"").substring(0,30)+"....";
								}else{									
									return row.scope;
								}
							}
						},
					{field:'shortContent',title:'简短介绍',align:'center',sortable:true,
							formatter:function(value,row,index){
								if((row.shortContent+"").length>30){
									return (row.shortContent+"").substring(0,30)+"....";
								}else{									
									return row.shortContent;
								}
							}
						},
					{field:'rank',title:'推荐指数',align:'center',sortable:true,
							formatter:function(value,row,index){
								if(value == 1){
									return "一般推荐";
								}
								if(value == 2){
									return "比较推荐";								
								}
								if(value == 3){
									return "实力推荐";
								}
								if(value == 4){
									return "强烈推荐";							
								}
								if(value == 5){
									return "极力推荐";
								}else{									
									if((row.rank+"").length>30){
										return (row.rank+"").substring(0,30)+"....";
									}else{									
										return row.rank;
									}
								}
							}
						},
					{field:'recommandReason',title:'推荐原因',align:'center',sortable:true,
							formatter:function(value,row,index){
								if((row.recommandReason+"").length>30){
									return (row.recommandReason+"").substring(0,30)+"....";
								}else{									
									return row.recommandReason;
								}
							}
						},
					/*{field:'discount',title:'折扣',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.discount;
							}
					},*/
					{field:'rcdDays',title:'建议天数',align:'center',sortable:true,
							formatter:function(value,row,index){
								if((row.rcdDays+"").length>30){
									return (row.rcdDays+"").substring(0,30)+"....";
								}else{									
									return row.rcdDays;
								}
							}
						},
					{field:'difficultyRate',title:'挑战度(1为最低,5为最高,依次递增)',align:'center',sortable:true,
							formatter:function(value,row,index){
								if(value == 1){
									return "一般难度";
								}
								if(value == 2){
									return "略有挑战";								
								}
								if(value == 3){
									return "难度适中";
								}
								if(value == 4){
									return "是个难关";							
								}
								if(value == 5){
									return "难度爆棚";
								}else{									
									if((row.difficultyRate+"").length>30){
										return (row.difficultyRate+"").substring(0,30)+"....";
									}else{									
										return row.difficultyRate;
									}
								}
							}
						},
					{field:'happyValue',title:'快乐值(1为最低,5为最高,依次递增)',align:'center',sortable:true,
							formatter:function(value,row,index){
								if(value == 1){
									return "心情舒畅";
								}
								if(value == 2){
									return "趣味盎然";								
								}
								if(value == 3){
									return "乐翻天";
								}
								if(value == 4){
									return "乐不思蜀";							
								}
								if(value == 5){
									return "极乐无穷";
								}else{									
									if((row.happyValue+"").length>30){
										return (row.happyValue+"").substring(0,30)+"....";
									}else{									
										return row.happyValue;
									}
								}
							}
						},
					{field:'recommandCrowd',title:'建议人群',align:'center',sortable:true,
							formatter:function(value,row,index){
								if((row.recommandCrowd+"").length>30){
									return (row.recommandCrowd+"").substring(0,30)+"....";
								}else{									
									return row.recommandCrowd;
								}
							}
						},				
					{field:'remark',title:'备注(提醒建议)',align:'center',sortable:true,
							formatter:function(value,row,index){
								if((row.remark+"").length>30){
									return (row.remark+"").substring(0,30)+"....";
								}else{									
									return row.remark;
								}
							}
						}
					]],
					toolbar:[
						{id:'btnadd',text:'添加',btnType:'add'},
						{id:'btnedit',text:'修改',btnType:'edit'},
						{id:'btndelete',text:'删除',btnType:'remove'},
						{id:'btnedit',text:'上传图片',btnType:'upload',iconCls:'icon-edit',handler:function(){
							var selected = _box.utils.getCheckedRows();
							if (_box.utils.checkSelectOne(selected)){
								_this.uploadPhotoForm().resetForm();
								_this.uploadPhotoForm().find("input[name='id']").val(selected[0].id);
								_this.uploadPhotoWin().window('open'); 		
							}
						}},
						{id:'btnedit',text:'编辑图片',btnType:'browser',iconCls:'icon-edit',handler:function(){
							var selected = _box.utils.getCheckedRows();
							if (_box.utils.checkSelectOne(selected)){
								_this.editPhotoForm().resetForm();
								_this.editPhotoForm().find("input[name='id']").val(selected[0].id);
								_this.loadPhotoList(selected[0].id);
								//_this.editPhotoWin().window('open');
								
							}
						}},
						{id:'btnback',text:'back',disabled: true,iconCls:'icon-back',
							handler:function(){
								_this.toList();
							}
						}
			     	]
			}
		},
		init:function(){
			this.initUploadForm();
			this.initEditForm();
			this.difficultyRate();
			this.happyValue();
			this.writeSelect();
			this.writeRank();
			_box = new YDataGrid(_this.config); 
			_box.init();
			ZXXFILE = $.extend(ZXXFILE,this.params);
			ZXXFILE.init();
			$('#addLine_btn').click(_this.addLine);
			$('#addDefLine_btn').click(_this.addDefBtns);
			$('#delAllLine_btn').click(function(){
				itour.confirm('提示','你确定删除当前记录吗?',function(r){
					_this.delAllLine(false);
				});
			});
			
		},
		writeSelect:function(){
			var result='<select name="recommandCrowd" type="text" maxlength="255" class="easyui-validatebox" style="width:111px;" data-options="" missingMessage="请填写recommandCrowd">'+
			'<option value="">--请选择--</option>'+  
			'<option value="亲子游">亲子游</option> '+ 
			'<option value="情侣双人游">情侣双人游</option>'+ 
			'<option value="家庭游">家庭游</option>'+ 
			'<option value="老人游">老人游</option>'+ 
			'<option value="个人游">个人游</option>'+ 
			'<option value="伙伴游(毕业旅行)">伙伴游(毕业旅行)</option>'+ 
			'<option value="其他人群">其他人群</option>'+ 
			'</select>';
			$("#rucrowd").parent().append(result);
			$("#rcmdCrowd").after(result);
			//document.getElementById("rucrowd").innerHTML= result;
		},
		writeRank:function(){
			var rankSelect ='<select name="rank" class="easyui-box ui-text" style="width:110px;">'+
			'<option value="">--请选择--</option>'+
			'<option value="5">极力推荐</option>'+
			'<option value="4">强烈推荐</option>'+
			'<option value="3">实力推荐</option>'+
			'<option value="2">比较推荐</option>'+
			'<option value="1">一般推荐</option>'+
			'</select>'; 
			$("#rankLabel").parent().append(rankSelect);
			$("#SelectrankLabel").after(rankSelect);
		},
		difficultyRate:function(){
			var difficultyRateSelect = '<select name="difficultyRate" type="text" maxlength="" class="easyui-numberbox" data-options="" missingMessage="请填写difficultyRate">'+
						'<option value="">--请选择--</option>'+
						'<option value="1">一般难度</option>'+
						'<option value="2">略有挑战</option>'+
						'<option value="3">难度适中</option>'+
						'<option value="4">是个难关</option>'+
						'<option value="5">难度爆棚</option>'+
						'</select>';
			$("#difficultyRateLabel").parent().append(difficultyRateSelect);
		},
		happyValue:function(){
			var happySelect='<select name="happyValue" type="text" maxlength="" class="easyui-numberbox" data-options="" missingMessage="请填写happyValue"><option value="">--请选择--</option><option value="1">心情舒畅</option><option value="2">趣味盎然</option><option value="3">乐翻天</option><option value="4">乐不思蜀</option><option value="5">极乐无穷</option></select>';
			$("#happyLabel").parent().append(happySelect);
		},
		params:{
				fileInput: $("#fileImage").get(0),
			//	dragDrop: $("#fileDragArea").get(0),
				upButton: $("#fileSubmit").get(0),
				url: 'uploadPhoto',// _this.config.action.save,//$("#uploadForm").attr("action"),
				filter: function(files) {
					var arrFiles = [];
					for (var i = 0, file; file = files[i]; i++) {
						if (file.type.indexOf("image") == 0) {
							if (file.size >= 5120000) {
								alert('您这张"'+ file.name +'"图片大小过大，应小于5M');	
							} else {
								arrFiles.push(file);	
							}			
						} else {
							alert('文件"' + file.name + '"不是图片。');	
						}
					}
					return arrFiles;
				},
				onSelect: function(files) {
					var html = '', i = 0;
					$("#preview").html('<div class="upload_loading"></div>');
					var funAppendImage = function() {
						file = files[i];
					//	alert(file.name);
						if (file) {
							var reader = new FileReader();
							reader.onload = function(e) {
								html = html + '<div id="uploadList_'+ i +'" class="upload_append_list"><p><strong>' + file.name + '</strong>'+ 
									'<a href="javascript:" class="upload_delete" title="删除" data-index="'+ i +'">删除</a><br />' +
									'<img id="uploadImage_' + i + '" src="' + e.target.result + '" class="upload_image" /></p>'+ 
									'<span id="uploadProgress_' + i + '" class="upload_progress"></span>' +
								'</div>';
								i++;
								funAppendImage();
							}
							reader.readAsDataURL(file);
						} else {
							$("#preview").html(html);
							if (html) {
								//删除方法
								$(".upload_delete").click(function() {
									ZXXFILE.funDeleteFile(files[parseInt($(this).attr("data-index"))]);
									return false;	
								});
								//提交按钮显示
								$("#fileSubmit").show();	
							} else {
								//提交按钮隐藏
								$("#fileSubmit").hide();	
							}
						}
					};
					funAppendImage();		
				},
				onDelete: function(file) {
					$("#uploadList_" + file.index).fadeOut();
				},
				onDragOver: function() {
					$(this).addClass("upload_drag_hover");
				},
				onDragLeave: function() {
					$(this).removeClass("upload_drag_hover");
				},
				onProgress: function(file, loaded, total) {
					var eleProgress = $("#uploadProgress_" + file.index), percent = (loaded / total * 100).toFixed(2) + '%';
					eleProgress.show().html(percent);
				},
				onSuccess: function(file, response) {
					$("#uploadInf").append("<p>图片"+file.name+"上传成功，"  + response + "</p>");
					//$("#uploadInf").append("<p>上传成功，图片地址是：" + response + "</p>");
				},
				onFailure: function(file) {
					$("#uploadInf").append("<p>图片" + file.name + "上传失败！</p>");	
					$("#uploadImage_" + file.index).css("opacity", 0.2);
				},
				onComplete: function() {
					//提交按钮隐藏
					$("#fileSubmit").hide();
					//file控件value置空
					$("#fileImage").val("");
					$("#uploadInf").append("<p>当前图片全部上传完毕，可继续添加上传。</p>");
				}
	}};
	return _this;
}();

$(function(){
	itour.travelItem.init();
});