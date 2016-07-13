$package('itour.feedback');
itour.feedback = function(){
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
  				title:'客户反馈',
	   			url:'feedback/dataList',
	   			columns:[[
					{field:'id',checkbox:true},
					{field:'feedbackId',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.feedbackId;
							}
						},
					{field:'createTime',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.createTime;
							}
						},
					{field:'status',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.status;
							}
						},
					{field:'updateTime',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.updateTime;
							}
						},
					{field:'title',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.title;
							}
						},
					{field:'content',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.content;
							}
						},
					{field:'customerId',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.customerId;
							}
						},
					{field:'result',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.result;
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
	itour.feedback.init();
});