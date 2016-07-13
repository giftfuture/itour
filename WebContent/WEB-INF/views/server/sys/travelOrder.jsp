<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%    
String path = request.getContextPath();    
// 获得本项目的地址(例如: http://localhost:8080/MyApp/)赋值给basePath变量    
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";    
// 将 "项目路径basePath" 放入pageContext中，待以后用EL表达式读出。    
pageContext.setAttribute("basePath",basePath);    
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
 <base href="<%=basePath%>">
 <meta http-equiv="pragma" content="no-cache">  
 <meta http-equiv="cache-control" content="no-cache">  
 <meta http-equiv="expires" content="0">      
 <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
 <meta http-equiv="description" content="This is my page"> 
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <jsp:include page="/WEB-INF/views/server/resource.jsp"></jsp:include>
  </head>
  <body class="easyui-layout">
 	 <!-- Search panel start -->
 	 <div class="ui-search-panel" region="north" style="height: 80px;" title="过滤条件" data-options="striped: true,collapsible:false,iconCls:'icon-search',border:false" >  
 	 <form id="searchForm">
        <p class="ui-fields">
			<label class="ui-label">下单时间:</label><input name="createTime" class="easyui-box ui-text" style="width:100px;">
			<label class="ui-label">更新时间:</label><input name="updateTime" class="easyui-box ui-text" style="width:100px;">
	    </p>
	    <a href="#" id="btn-search" class="easyui-linkbutton" iconCls="icon-search">查询</a>
      </form>  
     </div> 
     <!--  Search panel end -->

     <!-- Data List -->
     <div region="center" border="false" >
     <table id="data-list"></table>
	 </div>
	 
     <!-- Edit Win&Form -->
     <div id="edit-win" class="easyui-dialog" title="Basic window" data-options="closed:true,iconCls:'icon-save',modal:true" style="width:400px;height:380px;">  
     	<form id="editForm" class="ui-form" method="post">  
     		 <input class="hidden" name="id">
     		 <div class="ui-edit">
		     	   <div class="ftitle">客户订单</div>
					<div class="fitem">
						<label>下单时间:</label>
						<input name="createTime" type="text" maxlength="" class="easyui-datetimebox" data-options="" missingMessage="请填写createTime">
					</div>
					<div class="fitem">
						<label>更新时间:</label>
						<input name="updateTime" type="text" maxlength="" class="easyui-datetimebox" data-options="" missingMessage="请填写updateTime">
					</div>
					<div class="fitem">
						<label>订单名称:</label>
						<input name="orderName" type="text" maxlength="500" class="easyui-validatebox" data-options="" missingMessage="请填写orderName">
					</div>
					<div class="fitem">
						<label>订单号:</label>
						<input name="orderNo" type="text" maxlength="" class="easyui-validatebox" data-options="" missingMessage="请填写orderNo">
					</div>
					<div class="fitem">
						<label>订单状态:</label>
						<input name="orderStatus" type="text" maxlength="" class="easyui-numberbox" data-options="" missingMessage="请填写orderStatus">
					</div>
					<div class="fitem">
						<label>联系人:</label>
						<input name="receiver" type="text" maxlength="100" class="easyui-validatebox" data-options="" missingMessage="请填写receiver">
					</div>
					<div class="fitem">
						<label>联系电话:</label>
						<input name="receiverMobile" type="text" maxlength="20" class="easyui-validatebox" data-options="" missingMessage="请填写receiverMobile">
					</div>
					<div class="fitem">
						<label>备注:</label>
						<input name="remark" type="text" maxlength="500" class="easyui-validatebox" data-options="" missingMessage="请填写remark">
					</div>
					<div class="fitem">
						<label>客户ID:</label>
						<input name="customerId" type="text" maxlength="64" class="easyui-validatebox" data-options="" missingMessage="请填写customerId">
					</div>
					<div class="fitem">
						<label>计划出行日:</label>
						<input name="expectedDepart" type="text" maxlength="" class="easyui-datetimebox" data-options="" missingMessage="请填写expectedDepart">
					</div>
					<div class="fitem">
						<label>计划返程日:</label>
						<input name="expectedBack" type="text" maxlength="" class="easyui-datetimebox" data-options="" missingMessage="请填写expectedBack">
					</div>
					<div class="fitem">
						<label>出行人数:</label>
						<input name="totalStaff" type="text" maxlength="" class="easyui-numberbox" data-options="" missingMessage="请填写totalStaff">
					</div>
					<div class="fitem">
						<label>是否支付完成:</label>
						<input name="isPayed" type="text" maxlength="255" class="easyui-validatebox" data-options="" missingMessage="请填写isPayed">
					</div>
					<div class="fitem">
						<label>支付方式:</label>
						<input name="payType" type="text" maxlength="255" class="easyui-validatebox" data-options="" missingMessage="请填写payType">
					</div>
					<div class="fitem">
						<label>支付平台:</label>
						<input name="payPlatform" type="text" maxlength="255" class="easyui-validatebox" data-options="" missingMessage="请填写payPlatform">
					</div>
					<div class="fitem">
						<label>付款银行:</label>
						<input name="bank" type="text" maxlength="255" class="easyui-validatebox" data-options="" missingMessage="请填写bank">
					</div>
					<div class="fitem">
						<label>付款方银行帐户:</label>
						<input name="payAccount" type="text" maxlength="255" class="easyui-validatebox" data-options="" missingMessage="请填写payAccount">
					</div>
					<div class="fitem">
						<label>付款时间:</label>
						<input name="payTime" type="text" maxlength="" class="easyui-datetimebox" data-options="" missingMessage="请填写payTime">
					</div>
					<div class="fitem">
						<label>付款终端:</label>
						<input name="payTerminal" type="text" maxlength="255" class="easyui-validatebox" data-options="" missingMessage="请填写payTerminal">
					</div>
  			</div>
     	</form>
  	 </div>
     <script type="text/javascript" src="<%=basePath%>js/ux/sys/travelOrder.js"></script>
  </body>
</html>
