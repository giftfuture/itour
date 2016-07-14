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
			<label class="ui-label">状态:</label><input name="status" class="easyui-box ui-text" style="width:100px;">
			<label class="ui-label">创建时间:</label><input name="createTime" class="easyui-datetimebox" style="width:100px;">
	    </p>
	    &nbsp; &nbsp;<a href="#" id="btn-search" class="easyui-linkbutton" iconCls="icon-search">查询</a>
      </form>  
     </div> 
     <!--  Search panel end -->

     <!-- Data List -->
     <div region="center" border="false" >
     <table id="data-list"></table>
	 </div>
	 
     <!-- Edit Win&Form -->
     <div id="edit-win" class="easyui-dialog" title="订单详情" data-options="closed:true,iconCls:'icon-save',modal:true" style="width:400px;height:380px;">  
     	<form id="editForm" class="ui-form" method="post">  
     		 <input class="hidden" name="id">
     		 <div class="ui-edit">
		     	   <div class="ftitle">订单详情</div>
   					<div class="fitem">
						<label>订单号:</label>
						<input name="orderId" type="text" maxlength="64" class="easyui-validatebox" data-options="" missingMessage="请填写orderId">
					</div>
					<div class="fitem">
						<label>状态:</label>
						<input name="status" type="text" maxlength="" class="easyui-numberbox" data-options="" missingMessage="请填写status">
					</div>
					<div class="fitem">
						<label>创建时间:</label>
						<input name="createTime" type="text" maxlength="" class="easyui-datetimebox" data-options="" missingMessage="请填写createTime">
					</div>
					<div class="fitem">
						<label>更新时间:</label>
						<input name="updateTime" type="text" maxlength="" class="easyui-datetimebox" data-options="" missingMessage="请填写updateTime">
					</div>
					<div class="fitem">
						<label>单价:</label>
						<input name="perPrice" type="text" maxlength="" class="easyui-numberbox" data-options="precision:2,groupSeparator:','" missingMessage="请填写perPrice">
					</div>
					<div class="fitem">
						<label>数量:</label>
						<input name="count" type="text" maxlength="" class="easyui-numberbox" data-options="precision:2,groupSeparator:','" missingMessage="请填写count">
					</div>
					<div class="fitem">
						<label>内容详情:</label>
							<textarea rows="5" cols="40" name="content" maxlength="255" class="easyui-validatebox" data-options="" missingMessage="请填写remark"></textarea>
					</div>
					<div class="fitem">
						<label>备注:</label>
						<textarea rows="5" cols="40" name="remark" maxlength="500" class="easyui-validatebox" data-options="" missingMessage="请填写remark"></textarea>
					</div>
  			</div>
     	</form>
  	 </div>
     <script type="text/javascript" src="<%=basePath%>js/ux/sys/orderDetail.js"></script>
  </body>
</html>
