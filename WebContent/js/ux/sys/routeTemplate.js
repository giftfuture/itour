$package('itour.routeTemplate');
itour.routeTemplate = function(){
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
  				title:'路线模板',
	   			url:'routeTemplate/dataList',
	   			columns:[[
					{field:'id',checkbox:true},
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
					{field:'customerId',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.customerId;
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
					{field:'createBy',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.createBy;
							}
						},
					{field:'updateBy',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.updateBy;
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
	itour.routeTemplate.init();
});