$package('itour.travelItem');
itour.travelItem = function(){
	var _box = null;
	var _this = {
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
				{"btnName":"添加","menuid":"13","actionUrls":"travelItem/save","btnType":"add"},
				{"btnName":"修改","menuid":"13","actionUrls":"travelItem/getId|travelItem/save","btnType":"edit"},
				{"btnName":"删除","menuid":"13","actionUrls":"travelItem/delete","btnType":"remove"}
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
				save:'travelItem/save', //新增&修改 保存Action  
				getId:'travelItem/getId',//编辑获取的Action
				remove:'travelItem/delete'//删除数据的Action
			},
		//config:{
			
		/*	event:{
				add:function(){
					$('#typeIds_combobox').combobox('reload');
					_box.handler.add();
				},
				edit:function(){
					$('#typeIds_combobox').combobox('reload');
					_box.handler.edit();
				}
			},*/
  			dataGrid:{
  				title:'旅行项目',
	   			url:'dataList',
	   			columns:[[
					{field:'id',checkbox:true},
					{field:'itemCode',title:'项目代码',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.itemCode;
						}
					},
					{field:'item',title:'项目名称',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.item;
							}
						},
					{field:'elevation',title:'海拔',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.elevation;
							}
						},
					{field:'content',title:'详细描述',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.content;
							}
						},
					{field:'photos',title:'美图',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.photos;
							}
					},
					{field:'mileage',title:'里程',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.mileage;
							}
						},
					{field:'scope',title:'所属区域',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.scope;
							}
						},
					{field:'shortContent',title:'简短介绍',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.shortContent;
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
									return row.rank;
								}
							}
						},
					{field:'recommandReason',title:'推荐原因',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.recommandReason;
							}
						},
					/*{field:'discount',title:'折扣',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.discount;
							}
					},*/
					{field:'rcdDays',title:'建议天数',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.rcdDays;
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
									return row.difficultyRate;
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
									return row.happyValue;
								}
							}
						},
					{field:'recommandCrowd',title:'建议人群',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.recommandCrowd;
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
								{
									id:'btnback',
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
		init:function(){
			_box = new YDataGrid(_this.config); 
			_box.init();
			$('#addLine_btn').click(_this.addLine);
			$('#addDefLine_btn').click(_this.addDefBtns);
			$('#delAllLine_btn').click(function(){
				itour.confirm('提示','你确定删除当前记录吗?',function(r){
					_this.delAllLine(false);
				});
			});
			
		},
		writeSelect:function(){
			var result='<select name="recommandCrowd" type="text" maxlength="255" class="easyui-validatebox" data-options="" missingMessage="请填写recommandCrowd">'+
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
			//document.getElementById("rucrowd").innerHTML= result;
		},
		writeRank:function(){
			var rankSelect ='<select name="rank" class="easyui-box ui-text" style="width:100px;">'+
			'<option value="">--请选择--</option>'+
			'<option value="5">极力推荐</option>'+
			'<option value="4">强烈推荐</option>'+
			'<option value="3">实力推荐</option>'+
			'<option value="2">比较推荐</option>'+
			'<option value="1">一般推荐</option>'+
		'</select>'; 
			$("#rankLabel").parent().append(rankSelect);
		}
	}
	return _this;
}();

$(function(){
	itour.travelItem.init();
	itour.travelItem.writeSelect();
	itour.travelItem.writeRank();
});