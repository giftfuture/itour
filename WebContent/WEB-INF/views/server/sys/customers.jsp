<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%    
String path = request.getContextPath();    
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
			<label class="ui-label">创建时间:</label><input name="createTime" class="easyui-datetimebox ui-text" style="width:100px;">
			<label class="ui-label">状态:</label>
			<select name="status" class="easyui-box ui-text" style="width:100px;">
				<option value="">--请选择--</option>
				<option value="1">活跃</option>
				<option value="2">不活跃</option>
				<option value="3">废弃</option>
			</select>
	    </p>
	    <a href="javascript:void(0)" id="btn-search" class="easyui-linkbutton" iconCls="icon-search">查询</a>
      </form>  
     </div> 
     <!--  Search panel end -->

     <!-- Data List -->
     <div region="center" border="false" >
     <table id="data-list"></table>
	 </div>
	 
     <!-- Edit Win&Form -->
     <div id="edit-win" class="easyui-dialog" title="客户信息" data-options="closed:true,iconCls:'icon-save',modal:true" style="width:400px;height:420px;">  
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
						<label>姓&nbsp;&nbsp;名:</label>
						<input name="customerName" type="text" maxlength="200" class="easyui-validatebox" required="true" data-options="" missingMessage="客户姓名为必填项">
						<span style="color:red">*</span>
					</div>
					<div class="fitem">
						<label>昵&nbsp;&nbsp;称:</label>
						<input name="nickName" type="text" maxlength="50" class="easyui-validatebox" data-options="" missingMessage="请填写nickName">
					</div>
					<div class="fitem">
						<label>手机/移动电话:</label>
						<input name="mobile" type="text" maxlength="50" class="easyui-validatebox" required="true" data-options="" missingMessage="移动电话为必填项">
						<span style="color:red">*</span>
					</div>
					<div class="fitem">
						<label>固话/小灵通:</label>
						<input name="telephone" type="text" maxlength="255" class="easyui-validatebox" data-options="" missingMessage="请填写telephone">
					</div>
					<div class="fitem">
						<label>邮&nbsp;&nbsp;箱:</label>
						<input name="email" type="text" maxlength="255" class="easyui-validatebox" required="true" data-options="" missingMessage="邮箱为必填项" validType="email" invalidMessage="请填写正确格式的邮件" >
						<span style="color:red">*</span>
					</div>
					<div class="fitem">
						<label>来自(国家/地区):</label>
						<select name="scope" class="easyui-validatebox" data-options="" missingMessage="请填写scope">
							<option value="0">--请选择--</option>
							<option value="1">中国大陆</option>
							<option value="2">香港</option>
							<option value="3">澳门</option>
							<option value="4">台湾</option>
							<option value="5">海外</option>
						</select>
					</div>
					<div class="fitem">
						<label>城&nbsp;&nbsp;市:</label>
						<input name="city" type="text" maxlength="50" class="easyui-validatebox" data-options="" missingMessage="请填写city">
					</div>
					<div class="fitem">
						<label>区&nbsp;&nbsp;县:</label>
						<input name="district" type="text" maxlength="250" class="easyui-validatebox" data-options="" missingMessage="请填写district">
					</div>
					<div class="fitem">
						<label>地&nbsp;&nbsp;址:</label>
						<input name="address" type="text" maxlength="255" class="easyui-validatebox" data-options="" missingMessage="请填写address">
					</div>
					<div class="fitem">
						<label>个人简介/要求:</label>
						<textarea  name="introduction"  rows="7" cols="30" maxlength="500" class="easyui-validatebox" data-options="" missingMessage="请填写introduction"></textarea>
					</div>
  			</div>
     	</form>
  	 </div>
     <script type="text/javascript" src="<%=basePath%>js/ux/sys/customers.js"></script>
  </body>
</html>
