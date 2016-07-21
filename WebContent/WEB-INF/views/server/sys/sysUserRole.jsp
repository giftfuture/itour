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
  <base href=" <%=basePath%>">
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
 	 <div class="ui-search-panel" region="north" style="height: 80px;" title="过滤条件"
 	  data-options="striped: true,collapsible:false,iconCls:'icon-search',border:false" >  
 	 <form id="searchForm">
 	 	<p class="ui-fields">
 	 	   <label class="ui-label">账号:</label> 
 	 	   <input name="email" class="easyui-box ui-text" style="width:100px;">
            <label class="ui-label">状态: </label><input name="state" class="easyui-box ui-text" style="width:100px;">
            <label class="ui-label">授予角色: </label><input name="roleStr" class="easyui-box ui-text" style="width:100px;">
        </p>
        <a href="#" id="btn-search" class="easyui-linkbutton" iconCls="icon-search">查询</a>
      </form>  
     </div> 
     <!--  Search panel end -->
     
     <!-- DataList  -->
     <div region="center" border="false" >
     <table id="data-list"></table>
     </div>

     <!-- Edit Win&Form -->
     <div id="edit-win" class="easyui-dialog" title="授权" data-options="closed:true,iconCls:'icon-save',modal:true" style="width:400px;height:300px;">  
     	<form id="editForm" class="ui-form" method="post">  
     		 <input class="hidden" type="text" name="id">
     		  <div class="ui-edit">
		     	   <div class="ftitle">授权设置</div>    
		           <div class="fitem">  
		               <label>账号:</label>  
		               <input class="easyui-validatebox" type="text" readonly="readonly" name="email" data-options="required:true,validType:'email'"/>
		           </div>  
		            <div class="fitem">  
		               <label>角色选择:</label>  
		               <select class="easyui-combobox" id="roleIds" name="roleIds" data-options="width:135"></select>
		           </div> 
	         </div>
     	</form>
  	 </div> 
<script type="text/javascript" src="<%=basePath%>js/ux/sys/sysUserRole.js"></script>
  </body>
</html>
