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
					{field:'orderId',title:'订单号',align:'center',sortable:true,
						formatter:function(value,row,index){
							return row.orderId;
						}
					},
					{field:'status',title:'状态',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.status;
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
					{field:'content',title:'内容明细',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.content;
							}
						},
					{field:'perPrice',title:'单价',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.perPrice;
							}
						},
					{field:'count',title:'数量',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.count;
							}
						},
						{field:'remark',title:'备注',align:'center',sortable:true,
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
	itour.orderDetail.init();
});