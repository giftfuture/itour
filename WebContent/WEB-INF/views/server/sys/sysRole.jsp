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
	<body  class="easyui-layout">
	<!-- Search panel start -->
 	<div class="ui-search-panel" region="north" style="height: 80px;" title="过滤条件" data-options="striped: true,collapsible:false,iconCls:'icon-search',border:false" >  
 	 <form id="searchForm">
 	 	<p class="ui-fields">
            <label class="ui-label">角色名:</label> 
            <input name="roleName" class="easyui-box ui-text" style="width:100px;">
                        <label class="ui-label">状态: </label><input name="state" class="easyui-box ui-text" style="width:100px;">
             <label class="ui-label">创建时间: </label><input name="createTime" class="easyui-datetimebox" style="width:100px;">
        </p>  
        <a href="#" id="btn-search" class="easyui-linkbutton" iconCls="icon-search">查询</a>
      </form>  
     </div> 
     <!--  Search panel end -->
     
     <!-- DataList  -->
     <div region="center" border="false" >
    	 <table id="data-list"></table>
	 </div>
     <!-- Edit Form -->
     <div id="edit-win" class="easyui-dialog" title="系统角色" data-options="closed:true,iconCls:'icon-save',modal:true" style="width:400px;height:450px;">  
     	<form id="editForm" class="ui-form" method="post">  
     		 <input class="hidden" type="text" name="id">
     		 <div class="ui-edit">
	     	   <div class="ftitle">角色信息</div>    
	           <div class="fitem">  
	               <label>角色名:</label>  
	               <input class="easyui-validatebox" type="text" name="roleName" data-options="required:true,validType:'length[1,10]'">
	           </div>  
	           <div class="fitem">  
	               <label>状态:</label>  
	               <select class="easyui-combobox" name="state" data-options="required:true">
                    	<option value="0" selected="selected">可用</option>
                    	<option value="1">禁用</option>
                   	</select>
	           </div>  
	           <!-- 
	           <div class="fitem">  
	               <label>Description:</label>  
	               <textarea class="easyui-validatebox" data-options="length:[0,100]" name="descr"></textarea>
	           </div>
	            -->
	            <div class="fitem" style="">  
	               <label>功能权限:</label>
	               <div style="border: 1px solid #A4BED4; width:230px;height:200px;margin-left: 105px ;overflow: auto; ">  
	               	<ul id="menu-tree"  >
	               	</ul>
	               </div>
	               <!-- 
	               <select id="menu-tree" name="menuIds" class="easyui-combotree" data-options="url:'<%=basePath%>/sysMenu/getMenuTree.do'" multiple style="width:180px;"></select>
	                -->
	           </div>
	         </div>
     	</form>
  	 </div> 
<script type="text/javascript" src="<%=basePath%>js/ux/sys/sysRole.js"></script>
  </body>
</html>
