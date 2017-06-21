<%@ page language="java" import="java.lang.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="/WEB-INF/views/server/mResource.jsp"  %> 
<!DOCTYPE html>
<html>
<head>
<title></title>
<meta name="description" content=" ">
<meta name="keywords" content=" ">
<script type="text/javascript">
function ww4(date){
	var y = date.getFullYear();
	var m = date.getMonth()+1;
	var d = date.getDate();
	return  y+'-'+(m<10?('0'+m):m)+'-'+(d<10?('0'+d):d);
}
</script>
</head>
<body>
<%@include file="/frontm/header.jsp"  %> 
<table border="0" align="center" width="100%" cellpadding="0" cellspacing="0">
  <tr>
    <td class="STYLE17"><div align="center"><span class="STYLE19"></span></div></td>
  </tr>
  <tr>
    <td  style="float:left;text-align:left;"><img style="float:left" src="images/frame1-1.gif" width="100%" height="7" /></td>
  </tr>
  <tr>
    <td  background="images/frame1-2.gif">
    <table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
       <tr>
        <td valign="top">		
        <form:form name="sharehappy" method="post" enctype="multipart/form-data" autocomplete="off">
	        <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
	         <tr><td  style="text-align:left" class="STYLE18" colspan=2>标&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;题：<input type="text" class="easyui-textbox" data-options="" name="title" id="title"/></td>
	         </tr><!-- opacity:0 -->
	         <tr>
	            <td style="text-align:left" colspan=2><span class="STYLE23 STYLE18">旅行線路：</span>
	            	<input id="route" name="route" class="easyui-combobox"  data-options="width:'59%',valueField:'routeCode',textField:'title',mode:'remote',panelHeight:'auto',editable:false,method:'POST',url:'${basePath}routeTemplate/loadRoutes'">
	            </td>
	       </tr>
	       <tr><td style="text-align:left" colspan=2><span class="STYLE23 STYLE18">旅行日期：</span><span class="STYLE22"><span class="STYLE148">
	             <input id="tourTime" name="tourTime" class="easyui-datebox" data-options="editable:false,region:'north',split:true,border:false,validType:'checkDated'"/></span> 
	           </span></td></tr>
	        <tr> <td style="text-align:left" class="STYLE18" colspan=2>&nbsp;回&nbsp;憶&nbsp;人：
            	<span class="STYLE18"><input type="text" class="easyui-textbox" id="signature" name="signature"/></span></td></tr>
            	<tr><td colspan=2 style="text-align:left" class="STYLE18" >&nbsp;&nbsp;&nbsp;&nbsp;来&nbsp;&nbsp;自：
            	<input name="area" id="area" class="easyui-combobox"  data-options="valueField:'id',textField:'areaname',mode:'remote',panelHeight:'300',editable:false,method:'get',url:'${basePath}areas/allAreas'">
            	</td></tr>
            <tr><td style="text-align:left;" class="STYLE18" colspan=2>
                    &nbsp;&nbsp;&nbsp;&nbsp;封&nbsp;&nbsp;面：<input style="width:60%" type="file" name="surface" id="surface" value="" onchange="change('cover','surface')"  accept="image/jpg,image/jpeg,image/gif,image/png" />
                   </td></tr>
             <tr><td style="text-align:left;" class="STYLE18" colspan=2> <img id="cover" style="border:none;" border="0px" style="width:100%" width="100%" /></td></tr>      
	        <tr>
	            <td colspan=2><div id="content"></div></td>
	       </tr>
	       <tr>
	       <td colspan=2 style="text-align:left" class="STYLE18">验证码： <input type="text" id="verifyCode" name="verifyCode" class=" easyui-textbox" title="验证码" data-options="prompt:'请输入正确的验证码!'"/> 
	           <img alt="点击更换" src="${basePath}RandomCodeServlet" id="validateCode" onclick="changeValidateCode()">
	           &nbsp;&nbsp;<a href="javascript:void(0)" onclick="changeValidateCode()">看不清，换一张</a></td></tr>
	      <tr><td style="text-align:left"><a href="javascript:sharehappy()" class="easyui-linkbutton STYLE18" name="savehappy" iconcls="icon-save">分享回忆</a></td>
	      <td style="text-align:left"><a href="javascript:void(0);" class="easyui-linkbutton STYLE18" onclick="${basePath}showhappy/sharehappy" iconcls="icon-cancel">取消分享</a></td></tr>
	    </table><div id="alertMessage"></div>
    </form:form> 
    </td>
  </tr>
</table>
</td></tr>
 <tr>
    <td style="float:left"><img style="float:left" src="images/frame1-3.gif" width="100%" height="7" /></td>
  </tr> 
</table>
<script type="text/javascript" src="${basePath}jsm/ux/front/happy/sharehappy.js"></script>
<%@include file="/frontm/footer.jsp"  %>  
</body>
</html>

