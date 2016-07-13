$package('itour.travelItem');
itour.travelItem = function(){
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
  				title:'旅行项目',
	   			url:'travelItem/dataList',
	   			columns:[[
					{field:'id',checkbox:true},
					{field:'item',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.item;
							}
						},
					{field:'itemCode',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.itemCode;
							}
						},
					{field:'elevation',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.elevation;
							}
						},
					{field:'content',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.content;
							}
						},
					{field:'photos',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.photos;
							}
						},
					{field:'remark',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.remark;
							}
						},
					{field:'mileage',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.mileage;
							}
						},
					{field:'scope',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.scope;
							}
						},
					{field:'shortContent',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.shortContent;
							}
						},
					{field:'rank',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.rank;
							}
						},
					{field:'recommandReason',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.recommandReason;
							}
						},
					{field:'discount',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.discount;
							}
						},
					{field:'rcdDays',title:'建议天数',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.rcdDays;
							}
						},
					{field:'difficultyRate',title:'(挑战度)1为最低,5为最高,依次递增',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.difficultyRate;
							}
						},
					{field:'happyValue',title:'1为最低,5为最高,依次递增',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.happyValue;
							}
						},
					{field:'recommandCrowd',title:'建议适合的人群及要求,注意事项',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.recommandCrowd;
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
	itour.travelItem.init();
});