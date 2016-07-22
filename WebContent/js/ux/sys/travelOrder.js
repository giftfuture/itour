$package('itour.travelOrder');
itour.travelOrder = function(){
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
					{"btnName":"添加","menuid":"11","actionUrls":"travelOrder/save","btnType":"add"},
					{"btnName":"修改","menuid":"11","actionUrls":"travelOrder/getId|travelOrder/save","btnType":"edit"},
					{"btnName":"删除","menuid":"11","actionUrls":"travelOrder/delete","btnType":"remove"}
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
  				save:'travelOrder/save', //新增&修改 保存Action  
  				getId:'travelOrder/getId',//编辑获取的Action
  				remove:'travelOrder/delete'//删除数据的Action
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
  				title:'客户订单',
	   			url:'travelOrder/dataList',
	   			columns:[[
					{field:'id',checkbox:true},
					{field:'customerId',title:'客户ID',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.customerId;
						}
					},
					{field:'orderNo',title:'订单号',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.orderNo;
						}
					},
					{field:'orderName',title:'订单名称',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.orderName;
						}
					},
					{field:'orderStatus',title:'订单状态',align:'center',sortable:true,
						formatter:function(value,row,index){
							if(value == 1){
								return "待付款";
							}
							if(value == 2){
								return "付款完成,待确认";
							}
							if(value == 3){
								return "确认完成";
							}
						}
					},
					{field:'receiver',title:'联系人',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.receiver;
						}
					},
					{field:'receiverMobile',title:'联系电话',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.receiverMobile;
						}
					},
					{field:'createTime',title:'下单时间',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.createTime;
							}
						},
					{field:'updateTime',title:'更新时间',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.updateTime;
							}
						},
					{field:'expectedDepart',title:'计划出行日',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.expectedDepart;
							}
						},
					{field:'expectedBack',title:'计划返程日',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.expectedBack;
							}
						},
					{field:'totalStaff',title:'出行人数',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.totalStaff;
							}
						},
					{field:'budget',title:'出行预算',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.budget;
						}
					},
					{field:'isPayed',title:'是否支付完成.',align:'center',sortable:true,
							formatter:function(value,row,index){
								if(value == 1){
									return "未支付";
								}
								if(value == 2){
									return "支付完成";
								}
							}
						},
					{field:'payType',title:'支付方式',align:'center',sortable:true,
							formatter:function(value,row,index){
								if(value == 1){
									return "线上支付";
								}
								if(value == 2){
									return "现金支付";
								}
								if(value == 3){
									return "邮政汇款";
								}
								if(value == 4){
									return "公司转帐";
								}
							}
						},
					{field:'payPlatform',title:'付款平台',align:'center',sortable:true,
							formatter:function(value,row,index){
								if(value == 1){
									return "微信";
								}
								if(value == 2){
									return "支付宝";
								}
								if(value == 3){
									return "网银";
								}
							}
						},
					{field:'bank',title:'付款方银行',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.bank;
							}
						},
					{field:'payAccount',title:'付款方银行帐户',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.payAccount;
							}
						},
					{field:'payTime',title:'付款时间',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.payTime;
							}
						},
					{field:'payTerminal',title:'付款终端',align:'center',sortable:true,
							formatter:function(value,row,index){
								if(value == 1){
									return "PC";
								}
								if(value == 2){
									return "IOS";
								}
								if(value == 3){
									return "Android";
								}
							}
						},
					{field:'remark',title:'备注',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.remark;
						}
					}
					]],
					toolbar:[
								{id:'btnadd',text:'添加',btnType:'add',disabled:true},
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
	itour.travelOrder.init();
});