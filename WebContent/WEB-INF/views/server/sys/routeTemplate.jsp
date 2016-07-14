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
			<label class="ui-label">客户ID:</label><input name="customerId" class="easyui-box ui-text" style="width:100px;">
			<label class="ui-label">创建人:</label><input name="createBy" class="easyui-box ui-text" style="width:100px;">
			<label class="ui-label">创建时间:</label><input name="createTime" class="easyui-datetimebox" style="width:100px;">
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
     <div id="edit-win" class="easyui-dialog" title="路线模板" data-options="closed:true,iconCls:'icon-save',modal:true" style="width:400px;height:880px;">  
     	<form id="editForm" class="ui-form" method="post">  
     		 <input class="hidden" name="id">
     		 <div class="ui-edit">
		     	   <div class="ftitle">路线模板</div>
	   				<div class="fitem">
						<label>客户ID:</label>
						<input name="customerId" type="text" maxlength="64" class="easyui-validatebox" data-options="" missingMessage="请填写customerId">
					</div>
					<div class="fitem">
						<label>创建时间:</label>
						<input name="createTime" type="text" maxlength="" class="easyui-datetimebox" data-options="" missingMessage="请填写createTime">
					</div>
					<div class="fitem">
						<label>创建人:</label>
						<input name="createBy" type="text" maxlength="64" class="easyui-validatebox" data-options="" missingMessage="请填写createBy">
					</div>
					<div class="fitem">
						<label>模板1:</label>
						<input name="d1" type="text" maxlength="65535" class="easyui-validatebox" data-options="" missingMessage="请填写d1">
					</div>
					<div class="fitem">
						<label>模板2:</label>
						<input name="d2" type="text" maxlength="65535" class="easyui-validatebox" data-options="" missingMessage="请填写d2">
					</div>
					<div class="fitem">
						<label>模板3:</label>
						<input name="d3" type="text" maxlength="65535" class="easyui-validatebox" data-options="" missingMessage="请填写d3">
					</div>
					<div class="fitem">
						<label>模板4:</label>
						<input name="d4" type="text" maxlength="65535" class="easyui-validatebox" data-options="" missingMessage="请填写d4">
					</div>
					<div class="fitem">
						<label>模板5:</label>
						<input name="d5" type="text" maxlength="65535" class="easyui-validatebox" data-options="" missingMessage="请填写d5">
					</div>
					<div class="fitem">
						<label>模板6:</label>
						<input name="d6" type="text" maxlength="65535" class="easyui-validatebox" data-options="" missingMessage="请填写d6">
					</div>
					<div class="fitem">
						<label>模板7:</label>
						<input name="d7" type="text" maxlength="65535" class="easyui-validatebox" data-options="" missingMessage="请填写d7">
					</div>
					<div class="fitem">
						<label>模板8:</label>
						<input name="d8" type="text" maxlength="65535" class="easyui-validatebox" data-options="" missingMessage="请填写d8">
					</div>
					<div class="fitem">
						<label>模板9:</label>
						<input name="d9" type="text" maxlength="65535" class="easyui-validatebox" data-options="" missingMessage="请填写d9">
					</div>
					<div class="fitem">
						<label>模板10:</label>
						<input name="d10" type="text" maxlength="65535" class="easyui-validatebox" data-options="" missingMessage="请填写d10">
					</div>
					<div class="fitem">
						<label>模板11:</label>
						<input name="d11" type="text" maxlength="65535" class="easyui-validatebox" data-options="" missingMessage="请填写d11">
					</div>
					<div class="fitem">
						<label>模板12:</label>
						<input name="d12" type="text" maxlength="65535" class="easyui-validatebox" data-options="" missingMessage="请填写d12">
					</div>
					<div class="fitem">
						<label>模板13:</label>
						<input name="d13" type="text" maxlength="65535" class="easyui-validatebox" data-options="" missingMessage="请填写d13">
					</div>
					<div class="fitem">
						<label>模板14:</label>
						<input name="d14" type="text" maxlength="65535" class="easyui-validatebox" data-options="" missingMessage="请填写d14">
					</div>
					<div class="fitem">
						<label>模板15:</label>
						<input name="d15" type="text" maxlength="65535" class="easyui-validatebox" data-options="" missingMessage="请填写d15">
					</div>
					<div class="fitem">
						<label>模板16:</label>
						<input name="d16" type="text" maxlength="65535" class="easyui-validatebox" data-options="" missingMessage="请填写d16">
					</div>
					<div class="fitem">
						<label>模板17:</label>
						<input name="d17" type="text" maxlength="65535" class="easyui-validatebox" data-options="" missingMessage="请填写d17">
					</div>
					<div class="fitem">
						<label>模板18:</label>
						<input name="d18" type="text" maxlength="65535" class="easyui-validatebox" data-options="" missingMessage="请填写d18">
					</div>
					<div class="fitem">
						<label>模板19:</label>
						<input name="d19" type="text" maxlength="65535" class="easyui-validatebox" data-options="" missingMessage="请填写d19">
					</div>
					<div class="fitem">
						<label>模板20:</label>
						<input name="d20" type="text" maxlength="65535" class="easyui-validatebox" data-options="" missingMessage="请填写d20">
					</div>
					<div class="fitem">
						<label>更新时间:</label>
						<input name="updateTime" type="text" maxlength="" class="easyui-datetimebox" data-options="" missingMessage="请填写updateTime">
					</div>
					<div class="fitem">
						<label>更新人:</label>
						<input name="updateBy" type="text" maxlength="64" class="easyui-validatebox" data-options="" missingMessage="请填写updateBy">
					</div>
					<div class="fitem">
						<label>备注:</label>
						<input name="remark" type="text" maxlength="512" class="easyui-validatebox" data-options="" missingMessage="请填写remark">
					</div>
  			</div>
     	</form>
  	 </div>
     <script type="text/javascript" src="<%=basePath%>js/ux/sys/routeTemplate.js"></script>
  </body>
</html>

		