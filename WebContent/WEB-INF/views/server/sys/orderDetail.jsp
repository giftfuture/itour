<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/server/resource.jsp"  %>
<!DOCTYPE HTML>
<html>
  <head>
 <base href="<%=basePath%>">
 <meta http-equiv="pragma" content="no-cache">  
 <meta http-equiv="cache-control" content="no-cache">  
 <meta http-equiv="expires" content="0">      
 <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
 <meta http-equiv="description" content="This is my page"> 
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  </head>
  <body class="easyui-layout">
 	 <!-- Search panel start -->
 	 <div class="ui-search-panel" region="north" style="height: 80px;" title="过滤条件" data-options="striped: true,collapsible:false,iconCls:'icon-search',border:false" >  
 	 <form id="searchForm">
        <p class="ui-fields">
			<label class="ui-label">状态:</label>
			<select name="status" class="easyui-box ui-text" style="width:100px;">
				<option value="1">待处理</option>
				<option value="2">处理中</option>
				<option value="3">处理完成</option>
			</select>
			<label class="ui-label">创建时间:</label><input name="createTime" class="easyui-datetimebox" style="width:100px;">
	    </p>
	    &nbsp; &nbsp;<a href="javascript:void(0)" id="btn-search" class="easyui-linkbutton" iconCls="icon-search">查询</a>
      </form>  
     </div> 
     <!--  Search panel end -->

     <!-- Data List -->
     <div region="center" border="false" >
     <table id="data-list"></table>
	 </div>
	 
     <!-- Edit Win&Form -->
     <div id="edit-win" class="easyui-dialog" title="订单详情" data-options="closed:true,iconCls:'icon-save',modal:true" style="width:400px;height:420px;">  
     	<form id="editForm" class="ui-form" method="post">  
     		 <input class="hidden" name="id">
     		 <div class="ui-edit">
		     	   <div class="ftitle">订单详情</div>
   					<div class="fitem">
						<span name='orderId'></span>
						<input name="orderId" type="hidden" maxlength="64" class="easyui-validatebox" data-options="" missingMessage="请填写orderId">
					</div>
					<div class="fitem">
						<label>状&nbsp;&nbsp;态:</label>
						<select name="status">
							<option value="1">待处理</option>
							<option value="2">处理中</option>
							<option value="3">处理完成</option>
						</select>
					</div>
					<!-- <div class="fitem">
						<label>创建时间:</label>
						<input name="createTime" type="text" maxlength="" class="easyui-datetimebox" data-options="" missingMessage="请填写createTime">
					</div>
					<div class="fitem">
						<label>更新时间:</label>
						<input name="updateTime" type="text" maxlength="" class="easyui-datetimebox" data-options="" missingMessage="请填写updateTime">
					</div> -->
					<div class="fitem">
						<label>单&nbsp;&nbsp;价:</label>
						<input name="perPrice" type="text" maxlength="" class="easyui-numberbox" data-options="precision:2,groupSeparator:','" missingMessage="请填写perPrice">
					</div>
					<div class="fitem">
						<label>数&nbsp;&nbsp;量:</label>
						<input name="count" type="text" maxlength="" class="easyui-numberbox" data-options="precision:2,groupSeparator:','" missingMessage="请填写count">
					</div>
					<div class="fitem">
						<label>内容详情:</label>
							<textarea rows="7" cols="30" name="content" maxlength="255" class="easyui-validatebox" data-options="" missingMessage="请填写remark"></textarea>
					</div>
					<div class="fitem">
						<label>备&nbsp;&nbsp;注:</label>
						<textarea rows="7" cols="30" name="remark" maxlength="500" class="easyui-validatebox" data-options="" missingMessage="请填写remark"></textarea>
					</div>
  			</div>
     	</form>
  	 </div>
     <script type="text/javascript" src="<%=basePath%>js/ux/sys/orderDetail.js"></script>
  </body>
</html>
