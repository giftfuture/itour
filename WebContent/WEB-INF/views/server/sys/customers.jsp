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
			<label class="ui-label">创建时间:</label><input name="createTime" class="easyui-box ui-text" style="width:100px;">
			<label class="ui-label">状态:</label><input name="status" class="easyui-box ui-text" style="width:100px;">
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
		     	   <div class="ftitle">客户信息</div>
					<!-- <div class="fitem">
						<label></label>
						<input name="customerId" type="text" maxlength="" class="easyui-numberbox" data-options="required:true" missingMessage="请填写customerId">
					</div> 
					<div class="fitem">
						<label></label>
						<input name="createTime" type="text" maxlength="" class="easyui-datetimebox" data-options="" missingMessage="请填写createTime">
					</div>
					<div class="fitem">
						<label></label>
						<input name="status" type="text" maxlength="" class="easyui-numberbox" data-options="" missingMessage="请填写status">
					</div>
					<div class="fitem">
						<label></label>
						<input name="updateTime" type="text" maxlength="" class="easyui-datetimebox" data-options="" missingMessage="请填写updateTime">
					</div>-->
					<div class="fitem">
						<label>客户姓名:</label>
						<input name="customerName" type="text" maxlength="200" class="easyui-validatebox" data-options="" missingMessage="请填写customerName">
					</div>
					<div class="fitem">
						<label>昵称:</label>
						<input name="nickName" type="text" maxlength="50" class="easyui-validatebox" data-options="" missingMessage="请填写nickName">
					</div>
					<div class="fitem">
						<label>手机/移动电话:</label>
						<input name="mobile" type="text" maxlength="50" class="easyui-validatebox" data-options="" missingMessage="请填写mobile">
					</div>
					<div class="fitem">
						<label>固话/小灵通:</label>
						<input name="telephone" type="text" maxlength="255" class="easyui-validatebox" data-options="" missingMessage="请填写telephone">
					</div>
					<div class="fitem">
						<label>邮箱:</label>
						<input name="email" type="text" maxlength="255" class="easyui-validatebox" data-options="" missingMessage="请填写email">
					</div>
					<div class="fitem">
						<label>来自(国家/地区):</label>
						<input name="scope" type="text" maxlength="" class="easyui-validatebox" data-options="" missingMessage="请填写scope">
					</div>
					<div class="fitem">
						<label>城市:</label>
						<input name="city" type="text" maxlength="50" class="easyui-validatebox" data-options="" missingMessage="请填写city">
					</div>
					<div class="fitem">
						<label>区县:</label>
						<input name="district" type="text" maxlength="250" class="easyui-validatebox" data-options="" missingMessage="请填写district">
					</div>
					<div class="fitem">
						<label>地址:</label>
						<input name="address" type="text" maxlength="255" class="easyui-validatebox" data-options="" missingMessage="请填写address">
					</div>
					<div class="fitem">
						<label>个人简介/要求:</label>
						<textarea  name="introduction"  rows="4" cols="30" maxlength="500" class="easyui-validatebox" data-options="" missingMessage="请填写introduction"></textarea>
					</div>
  			</div>
     	</form>
  	 </div>
     <script type="text/javascript" src="<%=basePath%>js/ux/sys/customers.js"></script>
  </body>
</html>
