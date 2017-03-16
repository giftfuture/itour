$package('itour.routeTemplate');
itour.routeTemplate = function(){
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
				{"btnName":"添加","menuid":"74BDAEA713D841549B840E502C4F150B","actionUrls":"routeTemplate/save","btnType":"add"},
				{"btnName":"修改","menuid":"74BDAEA713D841549B840E502C4F150B","actionUrls":"routeTemplate/getId|routeTemplate/save","btnType":"edit"},
				{"btnName":"删除","menuid":"74BDAEA713D841549B840E502C4F150B","actionUrls":"routeTemplate/logicdelete","btnType":"logicremove"},
				{"btnName":"删除","menuid":"74BDAEA713D841549B840E502C4F150B","actionUrls":"routeTemplate/delete","btnType":"remove"}
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
				logicremove:'routeTemplate/logicdelete',//逻辑删除Action
				remove:'routeTemplate/delete'//删除数据的Action
			},
		/*config:{
			event:{
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
  				title:'路线模板',
	   			url:'routeTemplate/dataList.json',
	   			columns:[[
					{field:'id',checkbox:true},
					{field:'customerId',title:'客户ID',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.customerId;
						}
					},
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
							return row.title;
						}
					},
					{field:'rcdDays',title:'建议(浏览)时间',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.rcdDays;
						}
					},
					{field:'mileage',title:'最高海拔',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.mileage;
						}
					},
					{field:'departure',title:'出发地',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.departure;
						}
					},
					{field:'arrive',title:'完成地',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.arrive;
						}
					},
					{field:'transportation',title:'交通工具',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.transportation;
						}
					},
					{field:'trekDistance',title:'徒步里程',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.trekDistance;
						}
					},
					{field:'mountStyle',title:'山峰类型',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.mountStyle;
						}
					},
					{field:'shortContent',title:'内容简略',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.shortContent;
						}
					},
					{field:'special',title:'特别之外',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.special;
						}
					},
					{field:'related',title:'相关线路',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.related;
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
							return row.difficultyRate;
						}
					},
					{field:'quotoForm',title:'详细价目表',align:'center',sortable:true,
						formatter:function(value,row,index){
							return '<a href="'+basePath+'routeTemplate/quoteEdit?id='+row.id+'">价目详情</a>';
						}
					},
					{field:'d1',title:'模板1',align:'center',sortable:true,
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
						},
					{field:'createTime',title:'创建时间',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.createTime;
							}
						},
					{field:'updateTime',title:'更新时间',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.updateTime;
							}
						},
					{field:'createBy',title:'创建人',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.createBy;
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
								{id:'btndelete',text:'删除',btnType:'remove'},
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
			
		}
	}
	return _this;
}();

$(function(){
	itour.routeTemplate.init();
});