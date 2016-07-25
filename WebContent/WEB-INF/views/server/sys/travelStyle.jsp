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
			<label class="ui-label">旅行方式:</label><input name="type" class="easyui-box ui-text" style="width:100px;">
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
     <div id="edit-win" class="easyui-dialog" title="出行方式" data-options="closed:true,iconCls:'icon-save',modal:true" style="width:400px;height:320px;">  
     	<form id="editForm" class="ui-form" method="post">  
     		 <input class="hidden" name="id">
     		 <div class="ui-edit">
		     	   <div class="ftitle">旅行方式</div>
					<div class="fitem">
						<label>旅行方式:</label>
						<input name="type" type="text" maxlength="255" class="easyui-validatebox" data-options="" missingMessage="请填写type">
					</div>
					<p></p>
					<div class="fitem">
						<label>备&nbsp;&nbsp;注:</label>
						<textarea rows="7" cols="30" name="remark" maxlength="500" class="easyui-validatebox" data-options="" missingMessage="请填写remark"></textarea>
					</div>
  			</div>
     	</form>
  	 </div>
     <script type="text/javascript" src="<%=basePath%>js/ux/sys/travelStyle.js"></script>
  </body>
</html>
