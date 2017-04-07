$package('itour.routeTemplate');
itour.routeTemplate = function(){
	var _box = null;
	var _this = {
			uploadPhotoAction:'routeTemplate/uploadPhoto',
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
							itour.alert('提示', data.msg, 'info',function(){								
								itour.closeProgress();//关闭缓冲条
								_box.handler.refresh();
								_this.uploadPhotoForm().resetForm();
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
			uploadMapAction:'routeTemplate/uploadMap',
			uploadMapForm:function(){
				return $("#uploadMapForm");
			},
			uploadMapWin:function(){
				return $("#upload-map");
			},
			saveMap:function(){
					itour.progress();//缓冲条
					_this.uploadMapForm().attr('action',_this.uploadMapAction);
					_this.uploadMapForm().ajaxForm();
					itour.saveForm(_this.uploadMapForm(),function(data){
						///console.log(data);
						//if(data.success){	
						itour.alert('提示', data.msg||'地图保存成功！', 'info',function(){								
								itour.closeProgress();//关闭缓冲条
								_box.handler.refresh();
								_this.uploadMapForm().resetForm();
								_this.uploadMapWin().dialog('close');
							})
						//}
					});
			},
			initUploadMapForm:function(){
				_this.uploadMapWin().find("#mapSubmit").click(function(){
					_this.saveMap();
				});
				_this.uploadMapWin().find("#win-close").click(function(){	
					$.messager.confirm('提示','您确定关闭当前窗口吗?',function(r){  
					    if (r){  
					     	_this.uploadMapWin().dialog('close');
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
				{"btnName":"添加","menuid":"74BDAEA713D841549B840E502C4F150B","actionUrls":"routeTemplate/save","btnType":"add"},
				{"btnName":"修改","menuid":"74BDAEA713D841549B840E502C4F150B","actionUrls":"routeTemplate/getId|routeTemplate/save","btnType":"edit"},
				{"btnName":"删除","menuid":"74BDAEA713D841549B840E502C4F150B","actionUrls":"routeTemplate/logicdelete","btnType":"logicremove"},
				{"btnName":"物理删除","menuid":"74BDAEA713D841549B840E502C4F150B","actionUrls":"routeTemplate/delete","btnType":"remove"}
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
			html+=	   "	<td align='center'><span  class='newFlag red'>*</span></td>";
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
			/*add:function(){
				$('#typeIds_combobox').combobox('reload');
				_box.handler.add();
			},
			edit:function(){
				$('#typeIds_combobox').combobox('reload');
				_box.handler.edit();
			}*/
				add : function(){
					_this.delAllLine(true);//清空已有的数据
					_box.handler.add();//调用add方法
				var parentId =$('#search_parentId').val();
				if(parentId){
					$("#edit_parentId").val(parentId);
				}
			},
			edit:function(){
				_this.delAllLine(true);
				_box.handler.edit(function(result){
					$.each(result.data.btns,function(i,btn){
						_this.addLine(btn);
					});
				});
			}
			
		},
		action:{
				save:'routeTemplate/save', //新增&修改 保存Action  
				getId:'routeTemplate/getId',//编辑获取的Action
				uploadPhoto:'routeTemplate/uploadPhoto',
				logicremove:'routeTemplate/logicdelete',//逻辑删除Action
				remove:'routeTemplate/delete'//删除数据的Action
			},
  			dataGrid:{
  				title:'路线模板',
	   			url:'routeTemplate/dataList.json',
	   			columns:[[
					{field:'id',checkbox:true},
			/*		{field:'customerId',title:'客户ID',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.customerId;
						}
					},*/
					{field:'routeCode',title:'线路编号',align:'center',sortable:true,//线路编号
						formatter:function(value,row,index){
							return row.routeCode;
						}
					},
					{field:'cover',title:'封面',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.cover;
						}
					},
					{field:'title',title:'线路名称',align:'center',sortable:true,
						formatter:function(value,row,index){
							if((row.title+"").length>30){
								return (row.title+"").substring(0,30)+"....";
							}else{									
								return row.title;
							}
						}
					},
					{field:'quotoForm',title:'详细价目表',align:'center',sortable:true,
						formatter:function(value,row,index){
							return '<a href="'+basePath+'routeTemplate/quoteEdit?id='+row.id+'">价目详情</a>';
						}
					},
					{field:'rcdDays',title:'(建议)游览时间(天)',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.rcdDays;
						}
					},
					{field:'elevation',title:'最高海拔(米)',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.elevation;
						}
					},
					{field:'mileage',title:'里程(公里)',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.mileage;
						}
					},
					{field:'departure',title:'出发地',align:'center',sortable:true,
						formatter:function(value,row,index){
							if((row.departure+"").length>30){
								return (row.departure+"").substring(0,30)+"....";
							}else{									
								return row.departure;
							}
						}
					},
					{field:'arrive',title:'完成地',align:'center',sortable:true,
						formatter:function(value,row,index){
							if((row.arrive+"").length>30){
								return (row.arrive+"").substring(0,30)+"....";
							}else{									
								return row.arrive;
							}
						}
					},
					{field:'transportation',title:'交通工具',align:'center',sortable:true,
						formatter:function(value,row,index){
							if((row.transportation+"").length>30){
								return (row.transportation+"").substring(0,30)+"....";
							}else{									
								return row.transportation;
							}
						}
					},
					{field:'trekDistance',title:'徒步里程(公里)',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.trekDistance;
						}
					},
					{field:'mountStyle',title:'山峰类型',align:'center',sortable:true,
						formatter:function(value,row,index){
							if((row.mountStyle+"").length>30){
								return (row.mountStyle+"").substring(0,30)+"....";
							}else{									
								return row.mountStyle;
							}
						}
					},
					{field:'shortContent',title:'简略内容',align:'center',sortable:true,
						formatter:function(value,row,index){
							if((row.shortContent+"").length>30){
								return (row.shortContent+"").substring(0,30)+"....";
							}else{									
								return row.shortContent;
							}
						}
					},
					{field:'special',title:'特色介绍',align:'center',sortable:true,
						formatter:function(value,row,index){
							if((row.special+"").length>30){
								return (row.special+"").substring(0,30)+"....";
							}else{									
								return row.special;
							}
						}
					},
					{field:'related',title:'相关线路',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.related;
						}
					},{field:'similars',title:'相似线路',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.similars;
						}
					},
					{field:'routeMap',title:'路线地图',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.routeMap;
						}
					},
					{field:'travelStyle',title:'线路类别',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.travelStyle;
						}
					},
					{field:'travelItems',title:'包含景点',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.travelItems;
						}
					},
					{field:'difficultyRate',title:'旅行难度',align:'center',sortable:true,
						formatter:function(value,row,index){
							if(value == 0){
								return "热身难度";
							}
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
								return "难度爆表";
							}else{									
								if((row.difficultyRate+"").length>30){
									return (row.difficultyRate+"").substring(0,30)+"....";
								}else{									
									return row.difficultyRate;
								}
							}
						}
					},
/*					{field:'d1',title:'模板1',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d1;
							}
						},
					{field:'d2',title:'模板2',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d2;
							}
						},
					{field:'d3',title:'模板3',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d3;
							}
						},
					{field:'d4',title:'模板4',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d4;
							}
						},
					{field:'d5',title:'模板5',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d5;
							}
						},
					{field:'d6',title:'模板6',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d6;
							}
						},
					{field:'d7',title:'模板7',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d7;
							}
						},
					{field:'d8',title:'模板8',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d8;
							}
						},
					{field:'d9',title:'模板9',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d9;
							}
						},
					{field:'d10',title:'模板10',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d10;
							}
						},
					{field:'d11',title:'模板11',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d11;
							}
						},
					{field:'d12',title:'模板12',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d12;
							}
						},
					{field:'d13',title:'模板13',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d13;
							}
						},
					{field:'d14',title:'模板14',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d14;
							}
						},
					{field:'d15',title:'模板15',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d15;
							}
						},
					{field:'d16',title:'模板16',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d16;
							}
						},
					{field:'d17',title:'模板17',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d17;
							}
						},
					{field:'d18',title:'模板18',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d18;
							}
						},
					{field:'d19',title:'模板19',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d19;
							}
						},
					{field:'d20',title:'模板20',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d20;
							}
						},
					{field:'d21',title:'模板21',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d21;
							}
						},
					{field:'d22',title:'模板22',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d22;
							}
						},
					{field:'d23',title:'模板23',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d23;
							}
						},
					{field:'d24',title:'模板24',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d24;
							}
						},
					{field:'d25',title:'模板25',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d25;
							}
						},
					{field:'d26',title:'模板26',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d26;
							}
						},
					{field:'d27',title:'模板27',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d27;
							}
						},
					{field:'d28',title:'模板28',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d28;
							}
						},
					{field:'d29',title:'模板29',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d29;
							}
						},
					{field:'d30',title:'模板30',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d30;
							}
						},
					{field:'d31',title:'模板31',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d31;
							}
						},
					{field:'d32',title:'模板32',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d32;
							}
						},
					{field:'d33',title:'模板33',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d33;
							}
						},
					{field:'d34',title:'模板34',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d34;
							}
						},
					{field:'d35',title:'模板35',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d35;
							}
						},
					{field:'d36',title:'模板36',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d36;
							}
						},
					{field:'d37',title:'模板37',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d37;
							}
						},
					{field:'d38',title:'模板38',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d38;
							}
						},
					{field:'d39',title:'模板39',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d39;
							}
						},
					{field:'d40',title:'模板40',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d40;
							}
						},
					{field:'d41',title:'模板41',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d41;
							}
						},
					{field:'d42',title:'模板42',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d42;
							}
						},
					{field:'d43',title:'模板43',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d43;
							}
						},
					{field:'d44',title:'模板44',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d44;
							}
						},
					{field:'d45',title:'模板45',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d45;
							}
						},
					{field:'d46',title:'模板46',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d46;
							}
						},
					{field:'d47',title:'模板47',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d47;
							}
						},
					{field:'d48',title:'模板48',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d48;
							}
						},
					{field:'d49',title:'模板49',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d49;
							}
						},
					{field:'d50',title:'模板50',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d50;
							}
						},
					{field:'d51',title:'模板51',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d51;
							}
						},
					{field:'d52',title:'模板52',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d52;
							}
						},
					{field:'d53',title:'模板53',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d53;
							}
						},
					{field:'d54',title:'模板54',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d54;
							}
						},
					{field:'d55',title:'模板55',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d55;
							}
						},
					{field:'d56',title:'模板56',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d56;
							}
						},
					{field:'d57',title:'模板57',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d57;
							}
						},
					{field:'d58',title:'模板58',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d58;
							}
						},
					{field:'d59',title:'模板59',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d59;
							}
						},
					{field:'d60',title:'模板60',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d60;
							}
						},*/
					{field:'createTime',title:'创建时间',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.createTime;
							}
						},
					{field:'createBy',title:'创建人',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.createBy;
							}
						},
					{field:'updateTime',title:'更新时间',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.updateTime;
						}
					},
					{field:'updateBy',title:'更新人',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.updateBy;
							}
						},
					{field:'remark',title:'备注',align:'center',sortable:true,
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
								{id:'btnedit',text:'上传封面',btnType:'upload',iconCls:'icon-edit',handler:function(){
									var selected = _box.utils.getCheckedRows();
									if (_box.utils.checkSelectOne(selected)){
										_this.uploadPhotoForm().resetForm();
										_this.uploadPhotoForm().find("input[name='id']").val(selected[0].id);
										_this.uploadPhotoWin().window('open'); 		
									}
								}},
								{id:'btnedit',text:'上传地图',btnType:'upload',iconCls:'icon-edit',handler:function(){
									var selected = _box.utils.getCheckedRows();
									if (_box.utils.checkSelectOne(selected)){
										_this.uploadMapForm().resetForm();
										_this.uploadMapForm().find("input[name='id']").val(selected[0].id);
										_this.uploadMapWin().window('open'); 		
									}
								}},
								{id:'btndelete',text:'物理删除',btnType:'remove'},
								{id:'btnlogicdelete',text:'删除',iconCls:'icon-remove',btnType:'logicremove'},
								{id:'btnback',
									text:'back',
									disabled: true,
									iconCls:'icon-back',
									handler:function(){
										_this.toList();
									}
								}
							]
			}
		},
		params:{
			fileInput: $("#fileImage").get(0),
		//	dragDrop: $("#fileDragArea").get(0),
			upButton: $("#fileSubmit").get(0),
			url: 'routeTemplate/uploadPhoto',// _this.config.action.uploadPhoto,//$("#uploadForm").attr("action"),
			filter: function(files) {
				var arrFiles = [];
				for (var i = 0, file; file = files[i]; i++) {
					if (file.type.indexOf("image") == 0) {
						if (file.size >= 5120000) {
							itour.alert('提示','您这张"'+ file.name +'"图片大小过大，应小于5M','info');	
						} else {
							arrFiles.push(file);	
						}			
					} else {
						itour.alert('提示','文件"' + file.name + '"不是图片。','info');	
					}
				}
				return arrFiles;
			},
			onSelect: function(files) {
				//console.log(files[0]);
				var html = '',i = 0;
				$("#preview").html('<div class="upload_loading"></div>');
				var funAppendImage = function() {
					file = files[i];
					if(file) {
						var reader = new FileReader();
						reader.onload = function(e) {
							if(i==0){
								html = html + '<div id="uploadList_'+ i +'" class="upload_append_list"><p><strong>' + file.name + '</strong>'+ 
								'<img id="uploadImage_' + i + '" src="' + e.target.result + '" class="upload_image" /></p>'+ 
								'<span id="uploadProgress_' + i + '" class="upload_progress"></span>' +
								'</div>';
								i++;
								funAppendImage();
							}
						}
						reader.readAsDataURL(file);
					} else {
						//console.log(html);
						$("#preview").html(html);
						if (html) {
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
				$("#uploadInf").append("<p>封面图片"+file.name+"上传成功，"  + response + "</p>");
				Grid.datagrid('reload',param);
				_this.config.datagrid('reload',param);
				   Form.multiDataForm.resetForm();
			},
			onFailure: function(file) {
				$("#uploadInf").append("<p>封面图片" + file.name + "上传失败！</p>");	
				$("#uploadImage_" + file.index).css("opacity", 0.2);
			},
			onComplete: function() {
				//提交按钮隐藏
				$("#fileSubmit").hide();
				//file控件value置空
				$("#fileImage").val("");
				$("#uploadInf").append("<p>当前图片上传完毕。</p>");
			}
		},
		mapparams:{
			fileInput: $("#mapfile").get(0),
		//	dragDrop: $("#fileDragArea").get(0),
			upButton: $("#mapSubmit").get(0),
			url: 'routeTemplate/uploadMap',
			filter: function(files){
				var arrFiles = [];
				for (var i = 0, file; file = files[i]; i++) {
					if (file.type.indexOf("image") == 0) {
						if (file.size >= 5120000) {
							itour.alert('提示','您这张"'+ file.name +'"图片大小过大，应小于5M','info');	
						} else {
							arrFiles.push(file);	
						}			
					} else {
						itour.alert('提示','文件"' + file.name + '"不是图片。','info');	
					}
				}
				return arrFiles;
			},
			onSelect: function(files) {
				//console.log(files[0]);
				var html = '',i = 0;
				$("#mappreview").html('<div class="upload_loading"></div>');
				var funAppendImage = function() {
					file = files[i];
					if (file) {
						var reader = new FileReader();
						reader.onload = function(e) {
							if(i==0){
								html = html + '<div id="mapuploadList_'+ i +'" class="upload_append_list"><p><strong>' + file.name + '</strong>'+ 
								'<img id="mapuploadImage_' + i + '" src="' + e.target.result + '" class="upload_image" /></p>'+ 
								'<span id="mapuploadProgress_' + i + '" class="upload_progress"></span>' +
								'</div>';
								i++;
								funAppendImage();
							}
						}
						reader.readAsDataURL(file);
					} else {
						$("#mappreview").html(html);
						if (html) {
							//提交按钮显示
							$("#mapSubmit").show();	
						} else {
							//提交按钮隐藏
							$("#mapSubmit").hide();	
						}
					}
				};
				funAppendImage();		
			},
			onDelete: function(file) {
				$("#mapuploadList_" + file.index).fadeOut();
			},
			onDragOver: function() {
				$(this).addClass("upload_drag_hover");
			},
			onDragLeave: function() {
				$(this).removeClass("upload_drag_hover");
			},
			onProgress: function(file, loaded, total) {
				var eleProgress = $("#mapuploadProgress_" + file.index), percent = (loaded / total * 100).toFixed(2) + '%';
				eleProgress.show().html(percent);
			},
			onSuccess: function(file, response) {
				$("#mapuploadInf").append("<p>路线地图"+file.name+"上传成功，"  + response + "</p>");
				Grid.datagrid('reload',param);
				_this.config.datagrid('reload',param);
			   Form.uploadMapForm.resetForm();
			},
			onFailure: function(file) {
				$("#mapuploadInf").append("<p>路线地图" + file.name + "上传失败！</p>");	
				$("#mapuploadImage_" + file.index).css("opacity", 0.2);
			},
			onComplete: function() {
				//提交按钮隐藏
				$("#mapSubmit").hide();
				//console.log("<p>当前地图图片上传完毕。</p>");
				//file控件value置空
				$("#mapfile").val("");
				$("#mapuploadInf").append("<p>当前地图上传完毕。</p>");
			}
		},
		init:function(){
			_box = new YDataGrid(_this.config); 
			_box.init();
			this.initUploadForm();
			this.initUploadMapForm();
			var zxxfile = $.extend(ZXXFILE,this.params);
			zxxfile.init();
			var zxxmapfile = $.extend(uploadFile,this.mapparams);
			zxxmapfile.init();
			$('#addLine_btn').click(_this.addLine);
			$('#addDefLine_btn').click(_this.addDefBtns);
			$('#delAllLine_btn').click(function(){
				itour.confirm('提示','你确定删除当前记录吗?',function(r){
					_this.delAllLine(false);
				});
			});
			$("#travelItems").combobox({
				url:'travelItem/allItems',
				valueField:'alias',
				textField:'item',
				multiple:true,
				method:'get',
			    editable : false  ,
				formatter:function(row){
				   var s = "<span><input type='checkbox' class='selectId' style='vertical-align: middle' id='selectId_"+row.alias+"' value="+row.alias+">"+row.item+"<span>"
				   return s;  
				},
				onSelect:function(record){
					$("#selectId_"+record.alias).attr("checked", true);
				},
				onUnselect:function(record){
					$("#selectId_"+record.alias).attr("checked", false);
				}
			});
			$("#related").combobox({
				url:'routeTemplate/queryAll',
			    editable : false,
				valueField:'routeCode',
				textField:'title',
				multiple:true,
				method:'get',
				formatter:function(row){
				   var s = "<span><input type='checkbox' class='selectId' style='vertical-align: middle' id='selectId_"+row.routeCode+"' value="+row.routeCode+">"+row.title+"<span>"
				   return s;  
				},
				onSelect:function(record){
					$("#selectId_"+record.routeCode).attr("checked", true);
				},
				onUnselect:function(record){
					$("#selectId_"+record.routeCode).attr("checked", false);
				}
			});
		}
	}
	return _this;
}();
$(function(){
	itour.routeTemplate.init();
});