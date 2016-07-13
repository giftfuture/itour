$package('itour.orderDetail');
itour.orderDetail = function(){
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
  				title:'订单详情',
	   			url:'orderDetail/dataList',
	   			columns:[[
					{field:'id',checkbox:true},
					{field:'status',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.status;
							}
						},
					{field:'createTime',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.createTime;
							}
						},
					{field:'updateTime',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.updateTime;
							}
						},
					{field:'content',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.content;
							}
						},
					{field:'remark',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.remark;
							}
						},
					{field:'perPrice',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.perPrice;
							}
						},
					{field:'count',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.count;
							}
						},
					{field:'orderId',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.orderId;
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
	itour.orderDetail.init();
});