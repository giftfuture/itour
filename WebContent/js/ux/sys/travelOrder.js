$package('itour.travelOrder');
itour.travelOrder = function(){
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
  				title:'客户订单',
	   			url:'travelOrder/dataList',
	   			columns:[[
					{field:'id',checkbox:true},
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
					{field:'orderName',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.orderName;
							}
						},
					{field:'orderNo',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.orderNo;
							}
						},
					{field:'orderStatus',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.orderStatus;
							}
						},
					{field:'receiver',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.receiver;
							}
						},
					{field:'receiverMobile',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.receiverMobile;
							}
						},
					{field:'remark',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.remark;
							}
						},
					{field:'customerId',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.customerId;
							}
						},
					{field:'expectedDepart',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.expectedDepart;
							}
						},
					{field:'expectedBack',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.expectedBack;
							}
						},
					{field:'totalStaff',title:'本次订单出行人数',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.totalStaff;
							}
						},
					{field:'isPayed',title:'是否支付完成.',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.isPayed;
							}
						},
					{field:'payType',title:'1=线上支付,2=现金支付,3=邮政汇款,4=公司转帐',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.payType;
							}
						},
					{field:'payPlatform',title:'付款平台,如1=微信,2=支付宝,3=网银.',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.payPlatform;
							}
						},
					{field:'bank',title:'如网银支付,即为付款方银行',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.bank;
							}
						},
					{field:'payAccount',title:'付款方银行帐户',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.payAccount;
							}
						},
					{field:'payTime',title:'付款时间',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.payTime;
							}
						},
					{field:'payTerminal',title:'付款终端,如有,则为PC,IOS,Android',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.payTerminal;
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
	itour.travelOrder.init();
});