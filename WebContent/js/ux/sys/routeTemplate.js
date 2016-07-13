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
				{"btnName":"添加","menuid":10,"actionUrls":"routeTemplate/save","btnType":"add"},
				{"btnName":"修改","menuid":10,"actionUrls":"routeTemplate/getId","btnType":"edit"},
				{"btnName":"删除","menuid":10,"actionUrls":"routeTemplate/delete","btnType":"remove"}
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
	   			url:'routeTemplate/dataList',
	   			columns:[[
					{field:'id',checkbox:true},
					{field:'customerId',title:'客户ID',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.customerId;
						}
					},
					{field:'d1',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d1;
							}
						},
					{field:'d2',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d2;
							}
						},
					{field:'d3',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d3;
							}
						},
					{field:'d4',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d4;
							}
						},
					{field:'d5',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d5;
							}
						},
					{field:'d6',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d6;
							}
						},
					{field:'d7',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d7;
							}
						},
					{field:'d8',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d8;
							}
						},
					{field:'d9',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d9;
							}
						},
					{field:'d10',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d10;
							}
						},
					{field:'d11',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d11;
							}
						},
					{field:'d12',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d12;
							}
						},
					{field:'d13',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d13;
							}
						},
					{field:'d14',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d14;
							}
						},
					{field:'d15',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d15;
							}
						},
					{field:'d16',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d16;
							}
						},
					{field:'d17',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d17;
							}
						},
					{field:'d18',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d18;
							}
						},
					{field:'d19',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d19;
							}
						},
					{field:'d20',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d20;
							}
						},
					{field:'d21',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d21;
							}
						},
					{field:'d22',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d22;
							}
						},
					{field:'d23',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d23;
							}
						},
					{field:'d24',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d24;
							}
						},
					{field:'d25',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d25;
							}
						},
					{field:'d26',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d26;
							}
						},
					{field:'d27',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d27;
							}
						},
					{field:'d28',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d28;
							}
						},
					{field:'d29',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d29;
							}
						},
					{field:'d30',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d30;
							}
						},
					{field:'d31',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d31;
							}
						},
					{field:'d32',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d32;
							}
						},
					{field:'d33',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d33;
							}
						},
					{field:'d34',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d34;
							}
						},
					{field:'d35',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d35;
							}
						},
					{field:'d36',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d36;
							}
						},
					{field:'d37',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d37;
							}
						},
					{field:'d38',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d38;
							}
						},
					{field:'d39',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d39;
							}
						},
					{field:'d40',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d40;
							}
						},
					{field:'d41',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d41;
							}
						},
					{field:'d42',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d42;
							}
						},
					{field:'d43',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d43;
							}
						},
					{field:'d44',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d44;
							}
						},
					{field:'d45',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d45;
							}
						},
					{field:'d46',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d46;
							}
						},
					{field:'d47',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d47;
							}
						},
					{field:'d48',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d48;
							}
						},
					{field:'d49',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d49;
							}
						},
					{field:'d50',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d50;
							}
						},
					{field:'d51',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d51;
							}
						},
					{field:'d52',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d52;
							}
						},
					{field:'d53',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d53;
							}
						},
					{field:'d54',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d54;
							}
						},
					{field:'d55',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d55;
							}
						},
					{field:'d56',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d56;
							}
						},
					{field:'d57',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d57;
							}
						},
					{field:'d58',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d58;
							}
						},
					{field:'d59',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.d59;
							}
						},
					{field:'d60',title:'',align:'center',sortable:true,
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
								return row.remark;
							}
						},
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
			
		}
	}
	return _this;
}();

$(function(){
	itour.routeTemplate.init();
});