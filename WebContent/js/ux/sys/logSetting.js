$package('itour.logSetting');
itour.logSetting = function(){
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
  				title:'日志设置',
	   			url:'logSetting/dataList',
	   			columns:[[
					{field:'id',checkbox:true},
					{field:'logCode',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.logCode;
							}
						},
					{field:'tableName',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.tableName;
							}
						},
					{field:'function',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.function;
							}
						},
					{field:'urlTeimplate',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.urlTeimplate;
							}
						},
					{field:'creator',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.creator;
							}
						},
					{field:'deletescriptTemplate',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.deletescriptTemplate;
							}
						},
					{field:'updatescriptTemplate',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.updatescriptTemplate;
							}
						},
					{field:'createTime',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.createTime;
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
	itour.logSetting.init();
});