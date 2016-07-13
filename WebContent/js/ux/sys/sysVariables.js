$package('itour.sysVariables');
itour.sysVariables = function(){
	var _box = null;
	var _this = {
		config:{
			event:{
				add:function(){
					$('#typeIds_combobox').combobox('reload');
					_box.handler.add();
				},
				edit:function(){
					$('#typeIds_combobox').combobox('reload');
					_box.handler.edit();
				}
			},
  			dataGrid:{
  				title:'系统变量',
	   			url:'sysVariables/dataList',
	   			columns:[[
					{field:'id',checkbox:true},
					{field:'varName',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.varName;
							}
						},
					{field:'varValue',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.varValue;
							}
						},
					{field:'varHostname',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.varHostname;
							}
						},
					{field:'varHostip',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.varHostip;
							}
						},
					{field:'remark',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.remark;
							}
						},
					{field:'varProject',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.varProject;
							}
						},
					]]
			}
		},
		init:function(){
			_box = new YDataGrid(_this.config); 
			_box.init();
		}
	}
	return _this;
}();

$(function(){
	itour.sysVariables.init();
});