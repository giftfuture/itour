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
 	 <div class="ui-search-panel" region="north" style="height: 120px;" title="过滤条件" data-options="striped: true,collapsible:false,iconCls:'icon-search',border:false" >  
 	 <form id="searchForm">
        <p class="ui-fields">
			<label class="ui-label">旅游项目:</label><input name="item" class="easyui-box ui-text" style="width:100px;"/>
			<label class="ui-label">项目代码:</label><input name="itemCode" class="easyui-box ui-text" style="width:100px;"/>
			<label class="ui-label">海&nbsp;&nbsp;拔:</label><input name="elevation" class="easyui-box ui-text" style="width:100px;"/>
			<label class="ui-label">所属省市:</label><input name="scope" class="easyui-box ui-text" style="width:100px;"/></p>
			<p class="ui-fields"><label class="ui-label">推荐人群:</label><input name="recommandCrowd" class="easyui-box ui-text" style="width:100px;"/>
			<label class="ui-label">里&nbsp;&nbsp;程:</label><input name="mileage" class="easyui-box ui-text" style="width:100px;"/>
			<label class="ui-label">推荐指数:</label><input name="rank" class="easyui-box ui-text" style="width:100px;"/>
	    </p>
	    &nbsp;&nbsp;&nbsp;&nbsp;<a href="#" id="btn-search" class="easyui-linkbutton" iconCls="icon-search">查询</a>
      </form>  
     </div> 
     <!--  Search panel end -->

     <!-- Data List -->
     <div region="center" border="false" >
     <table id="data-list"></table>
	 </div>
	 
     <!-- Edit Win&Form -->
     <div id="edit-win" class="easyui-dialog" title="旅行项目" data-options="closed:true,iconCls:'icon-save',modal:true" style="width:400px;height:380px;">  
     	<form id="editForm" class="ui-form" method="post">  
     		 <input class="hidden" name="id">
     		 <div class="ui-edit">
		     	   <div class="ftitle">旅行项目</div>
					<div class="fitem">
						<label>项目名称:</label>
						<input name="item" type="text" maxlength="255" class="easyui-validatebox" data-options="" missingMessage="请填写item">
					</div>
					<div class="fitem">
						<label>项目代码:</label>
						<input name="itemCode" type="text" maxlength="255" class="easyui-validatebox" data-options="" missingMessage="请填写itemCode">
					</div>
					<div class="fitem">
						<label>海拔:</label>
						<input name="elevation" type="text" maxlength="" class="easyui-numberbox" data-options="precision:2,groupSeparator:','" missingMessage="请填写elevation">
					</div>
					<div class="fitem">
						<label>具体介绍:</label>
						<textarea rows="5" cols="40" name="remark" maxlength="500" class="easyui-validatebox" data-options="" missingMessage="请填写具体介绍"></textarea>
					</div>
					<div class="fitem">
						<label>美图:</label>
						<input name="photos" type="text" maxlength="512" class="easyui-validatebox" data-options="" missingMessage="请填写photos">
					</div>
					<div class="fitem">
						<label>里程:</label>
						<input name="mileage" type="text" maxlength="255" class="easyui-validatebox" data-options="" missingMessage="请填写mileage">
					</div>
					<div class="fitem">
						<label>所属省市:</label>
						<input name="scope" type="text" maxlength="255" class="easyui-validatebox" data-options="" missingMessage="请填写scope">
					</div>
					<div class="fitem">
						<label>简略描述:</label>
						<input name="shortContent" type="text" maxlength="255" class="easyui-validatebox" data-options="" missingMessage="请填写shortContent">
					</div>
					<div class="fitem">
						<label>推荐指数:</label>
						<input name="rank" type="text" maxlength="" class="easyui-numberbox" data-options="" missingMessage="请填写rank">
					</div>
					<div class="fitem">
						<label>找茬原因:</label>
						<input name="recommandReason" type="text" maxlength="512" class="easyui-validatebox" data-options="" missingMessage="请填写recommandReason">
					</div>
					<div class="fitem">
						<label>折扣:</label>
						<input name="discount" type="text" maxlength="" class="easyui-numberbox" data-options="precision:2,groupSeparator:','" missingMessage="请填写discount">
					</div>
					<div class="fitem">
						<label>建议天数:</label>
						<input name="rcdDays" type="text" maxlength="" class="easyui-numberbox" data-options="" missingMessage="请填写rcdDays">
					</div>
					<div class="fitem">
						<label>挑战度(1为最低,5为最高,依次递增)</label>
						<input name="difficultyRate" type="text" maxlength="" class="easyui-numberbox" data-options="" missingMessage="请填写difficultyRate">
					</div>
					<div class="fitem">
						<label>快乐值(1为最低,5为最高,依次递增)</label>
						<input name="happyValue" type="text" maxlength="" class="easyui-numberbox" data-options="" missingMessage="请填写happyValue">
					</div>
					<div class="fitem">
						<label>建议适合的人群及要求,注意事项</label>
						<input name="recommandCrowd" type="text" maxlength="255" class="easyui-validatebox" data-options="" missingMessage="请填写recommandCrowd">
					</div>
					<div class="fitem">
						<label>备注:</label>
						<textarea rows="5" cols="40" name="remark" maxlength="500" class="easyui-validatebox" data-options="" missingMessage="请填写remark"></textarea>
					</div>
  			</div>
     	</form>
  	 </div>
     <script type="text/javascript" src="<%=basePath%>js/ux/sys/travelItem.js"></script>
  </body>
</html>
