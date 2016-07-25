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
      <script type="text/javascript" src="<%=basePath%>js/ux/sys/quotation.js"></script>
  </head>
  <body class="easyui-layout">
 	 <!-- Search panel start -->
 	 <div class="ui-search-panel" region="north" style="height: 80px;" title="过滤条件" data-options="striped: true,collapsible:false,iconCls:'icon-search',border:false" >  
 	 <form id="searchForm">
        <p class="ui-fields">
			<label class="ui-label">报价单号:</label><input name="orderId" class="easyui-box ui-text" style="width:100px;">
			<label class="ui-label">报价单名:</label><input name="name" class="easyui-box ui-text" style="width:100px;">
			<label class="ui-label">生成时间:</label><input name="createTime" class="easyui-datetimebox" style="width:100px;">
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
     <div id="edit-win" class="easyui-dialog" title="报价单" data-options="closed:true,iconCls:'icon-save',modal:true" style="width:400px;height:420px;">  
     	<form id="editForm" class="ui-form" method="post">  
     		 <input class="hidden" name="id">
     		 <div class="ui-edit">
		     	   <div class="ftitle">报价单</div>
					<div class="fitem">
						<label>报价单名:</label>
						<input name="name" type="text" maxlength="255" class="easyui-validatebox" data-options="" missingMessage="请填写name">
					</div>
					<div class="fitem">
						<label>&nbsp;订单号:</label>
						<input name="orderId" type="text" maxlength="64" class="easyui-validatebox" data-options="" missingMessage="请填写orderId">
					</div>
					<div class="fitem">
						<label>&nbsp;报价单:</label>
						<input name="quotation" type="text" maxlength="255" class="easyui-validatebox" data-options="" missingMessage="请填写quotation">
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
						<label>总价加利润/明细报价:</label>
						<input name="type" type="text" maxlength="255" class="easyui-validatebox" data-options="" missingMessage="请填写type">
					</div>
					<div class="fitem">
						<label>&nbsp;总金额:</label>
						<input name="totalPrice" type="text" maxlength="" class="easyui-numberbox" data-options="precision:2,groupSeparator:','" missingMessage="请填写totalPrice">
					</div>
					<div class="fitem">
						<label>计算明细:</label>
						<input name="formula" type="text" maxlength="255" class="easyui-validatebox" data-options="" missingMessage="请填写formula">
					</div>
					<div class="fitem">
						<label>备&nbsp;&nbsp;注:</label>
						<textarea rows="7" cols="30" name="remark" maxlength="500" class="easyui-validatebox" data-options="" missingMessage="请填写remark"></textarea>
					</div>
  			</div>
     	</form>
  	 </div>

  </body>
</html>
