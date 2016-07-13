$package('itour.travelStyle');
itour.travelStyle = function(){
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
  				title:'旅行方式',
	   			url:'travelStyle/dataList',
	   			columns:[[
					{field:'id',checkbox:true},
					{field:'type',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.type;
							}
						},
					{field:'remark',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.remark;
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
	itour.travelStyle.init();
});