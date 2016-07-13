$package('itour.quotation');
itour.quotation = function(){
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
  				title:'报价单',
	   			url:'quotation/dataList',
	   			columns:[[
					{field:'id',checkbox:true},
					{field:'name',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.name;
							}
						},
					{field:'orderId',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.orderId;
							}
						},
					{field:'quotation',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.quotation;
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
					{field:'remark',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.remark;
							}
						},
					{field:'type',title:'1= 总价加利润,2= 明细报价',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.type;
							}
						},
					{field:'totalPrice',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.totalPrice;
							}
						},
					{field:'formula',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.formula;
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
	itour.quotation.init();
});