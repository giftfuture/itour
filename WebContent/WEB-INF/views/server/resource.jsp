<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath()+"/";  
    application.setAttribute("basePath", basePath);
    pageContext.setAttribute("basePath", basePath);
    long getTimestamp=new Date().getTime();
%>
<!-- 公共资源CSS,JS  -->
<link rel="stylesheet" type="text/css" href="${basePath}js/jquery-easyui-1.5.1/themes/bootstrap/easyui.css">
<link rel="stylesheet" type="text/css" href="${basePath}js/jquery-easyui-1.5.1/themes/icon.css">
<link rel="stylesheet" type="text/css" href="${basePath}css/base.css">
<!-- ** Javascript ** -->
<script type="text/javascript" src="${basePath}js/jquery-easyui-1.5.1/jquery.min.js"></script> 
<!-- <script src="http://code.jquery.com/jquery-migrate-1.1.1.js"></script> -->
<script type="text/javascript" src="${basePath}js/commons/jquery-migrate-1.1.0.min.js"></script>
<script type="text/javascript" src="${basePath}js/commons/jquery.form.js"></script>
<script type="text/javascript" src="${basePath}js/commons/package.js"></script>
<script type="text/javascript" src="${basePath}js/jquery-easyui-1.5.1/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${basePath}js/jquery-easyui-1.5.1/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="${basePath}js/jquery-easyui-1.5.1/easyloader.js"></script>
<script type="text/javascript" src="${basePath}js/commons/urls.js?v=<%=getTimestamp%>"></script>
<script type="text/javascript" src="${basePath}js/commons/base.js"></script>
<script type="text/javascript" src="${basePath}js/commons/YDataGrid.js"></script>
<script type="text/javascript">
var basePath = '${basePath}';
//$('select[name=sightSpot]').combobox('reload','');
$("input.easyui-datetimebox").datetimebox({
    showSeconds: false
});
$("input.easyui-datetimebox").focus(function(){	
	$(this).datetimebox('getValue');
});
</script>
