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
			<label class="ui-label">:</label><input name="operCode" class="easyui-box ui-text" style="width:100px;">
			<label class="ui-label">:</label><input name="logCode" class="easyui-box ui-text" style="width:100px;">
			<label class="ui-label">:</label><input name="operationType" class="easyui-box ui-text" style="width:100px;">
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
		     	   <div class="ftitle">操作日志</div>
					<div class="fitem">
						<label></label>
						<input name="operCode" type="text" maxlength="32" class="easyui-validatebox" data-options="required:true" missingMessage="请填写operCode">
					</div>
					<div class="fitem">
						<label></label>
						<input name="logCode" type="text" maxlength="32" class="easyui-validatebox" data-options="" missingMessage="请填写logCode">
					</div>
					<div class="fitem">
						<label></label>
						<input name="operationType" type="text" maxlength="64" class="easyui-validatebox" data-options="" missingMessage="请填写operationType">
					</div>
					<div class="fitem">
						<label></label>
						<input name="primaryKeyvalue" type="text" maxlength="64" class="easyui-validatebox" data-options="" missingMessage="请填写primaryKeyvalue">
					</div>
					<div class="fitem">
						<label></label>
						<input name="content" type="text" maxlength="512" class="easyui-validatebox" data-options="" missingMessage="请填写content">
					</div>
					<div class="fitem">
						<label></label>
						<input name="url" type="text" maxlength="256" class="easyui-validatebox" data-options="" missingMessage="请填写url">
					</div>
					<div class="fitem">
						<label></label>
						<input name="creator" type="text" maxlength="32" class="easyui-validatebox" data-options="" missingMessage="请填写creator">
					</div>
					<div class="fitem">
						<label></label>
						<input name="createTime" type="text" maxlength="" class="easyui-datetimebox" data-options="" missingMessage="请填写createTime">
					</div>
  			</div>
     	</form>
  	 </div>
     <script type="text/javascript" src="<%=basePath%>js/ux/sys/logOperation.js"></script>
  </body>
</html>
