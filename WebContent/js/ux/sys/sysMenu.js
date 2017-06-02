$package('itour.sysMenu');

itour.sysMenu = function(){
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
				{"btnName":"添加","menuid":'2',"actionUrls":"sysMenu/save","btnType":"add"},
				{"btnName":"修改","menuid":'2',"actionUrls":"sysMenu/getId|sysMenu/save","btnType":"edit"},
				{"btnName":"删除","menuid":"2","actionUrls":"sysMenu/logicdelete","btnType":"logicremove"},
				{"btnName":"删除","menuid":'2',"actionUrls":"sysMenu/delete","btnType":"remove"}
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
			$.parser.parse($("#btn-tb"));
		},
		addLine: function(data){
			var table = $("#btn-tb");
			var	html = "<tr class='tb-line' style=\"height:25px;float:top;valign:top\">";
		//	html+=	   "	<td align='center'><span  class='newFlag red'>*</span></td>text-name  text-desc";
			html+=	   "	<td><input name=\"btnName\" type=\"text\" class=\"easyui-textbox\" data-options=\"height:25,float:top\" style=\"width:100%;float:top;\" data-options=\"required:true\"></td>";
			html+=	   "	<td><input name=\"btnType\" type=\"text\" class=\"easyui-textbox\" data-options=\"height:25,float:top\" style=\"width:100%;float:top;\" data-options=\"required:true\"></td>";
			html+=	   "	<td><input name=\"actionUrls\" type=\"text\" class=\"easyui-textbox\" data-options=\"height:25,float:top\" style=\"width:100%;float:top;\"  ></td>";
			html+=	   "	<td align='center'><a class=\"easyui-linkbutton remove-btn\"  data-options=\"height:25,float:top\" iconCls=\"icon-remove\" plain=\"true\"></a>";
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
			$.parser.parse($(line).parent());//解析esayui标签
			table.append(line);
			$.parser.parse($("#btn-tb"));
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
  			action:{
  				save:'sysMenu/save', //新增&修改 保存Action  
  				getId:'sysMenu/getId',//编辑获取的Action
  				logicremove:'sysMenu/logicdelete',//逻辑删除Action
  				remove:'sysMenu/delete'//删除数据的Action
  			},
  			event:{
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
  			dataGrid:{
  				title:'菜单列表',
	   			url:'sysMenu/dataList.json',
	   			columns:[[
					{field:'id',checkbox:true},
					{field:'name',title:'菜单名称',width:120,sortable:true},
					/*{field:'rank',title:'序号',align:'right',width:80,sortable:true},*/
					{field:'url',title:'URL',width:220,sortable:true},
					{field:'createBy',title:'创建人',width:120,sortable:true},
					{field:'createTime',title:'创建时间',width:120,sortable:true},
					{field:'updateBy',title:'更新人',width:120,sortable:true},
					{field:'updateTime',title:'更新时间',width:120,sortable:true},
					{field:'childMenus',title:'子目录',width:120,align:'center',formatter:function(value,row,index){
						var html ="<a href='javascript:void(0)' title='本菜单有"+row.subCount+"个子菜单' onclick='itour.sysMenu.toList("+row.id+")'>进入子菜单</a>";
						return html;
					}}
				]],
				toolbar:[
					{id:'btnadd',text:'添加',btnType:'add'},
					{id:'btnedit',text:'修改',btnType:'edit'},
					{id:'btndelete',text:'物理删除',btnType:'remove'},
					{id:'btnlogicdelete',text:'删除',iconCls:'icon-remove',btnType:'logicremove'},
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
	itour.sysMenu.init();
	 /* if (window != top)
          top.location.href = location.href;*/
});		