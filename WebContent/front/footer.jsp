 <%@ page language="java" import="java.lang.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%-- <script type="text/javascript" src="${basePath}js/jquery-easyui-1.5.1/jquery.min.js"></script> --%>
<!-- <div style="left: 0; bottom: 0; right: 0;position:fixed !important;"> -->
<script type="text/javascript" src="${basePath}js/commons/package.js"></script>
<script type="text/javascript">
 var rcdDays='${rcdDays}';
 var level1Area ='${level1Area}';
 var level2Area = '${level2Area}';
</script>
<script type="text/javascript" src="${basePath}js/ux/front/footer.js"></script> 
<div>
<form name="searchForm" method="post">
<table class="frametb" align="center" style="width:100%;margin-top:30px" width="100%">
  <tr>
    <td width="10%" bgcolor="#CCCCCC"><div align="left" class="STYLE2"><strong>快速搜索</strong></div></td>
    <td width="80%" bgcolor="#CCCCCC" class="f14-gao1" >  
      <label><strong>旅行方式：</strong><input name="travel_style" id="travel_style" class="easyui-combobox" value="${travelStyle}" data-options="width:120,minWidth:80,height:22,valueField:'alias',textField:'type',mode:'remote',panelHeight:'150',editable:false,method:'get',url:'${basePath}travelStyle/loadStyles',prompt:'-所有-'">
       旅游区域： 
         <input class="easyui-combobox" id="level1Area" name="level1Area" value="${level1Area}" data-options="width:120,minWidth:80,height:22,panelHeight:'auto',editable:false,prompt:'-所有-'">
     	 <input id="level2Area" name="level2Area" class="easyui-combobox" data-options="width:120,minWidth:80,height:22,panelHeight:'auto',editable:false,prompt:'-所有-'"/> 
        假期天数：<a href="javascript:void(0)">
	   <input class="easyui-combobox" data-options="width:120,minWidth:80,height:22,editable:false,prompt:'-所有-'" name="vacation" id="vacation"/>
      </a></label></td>
      <td width="10%" bgcolor="#CCCCCC"><a name="search" href="javascript:itour.footer.searchRtResult()"><img name="search" src="${basePath}images/search.png" width="48" height="48" /></a> </td>
  </tr>
</table>
</form>
  <table width="100%" border="0" align="center" style="margin-top:30;background-color:#fafafa;" cellpadding="5" cellspacing="0"  bgcolor="#fafafa" name="keyfooter">
    </table> 
<table class="lefttxt frametb" align="center" style="margin-top:30px">
  <tbody><tr>
    <td valign="middle" height="135" bgcolor="#666666"><table width="100%" height="60" cellspacing="0" cellpadding="0" border="0" align="center">
      <tbody>
        <tr>
          <td width="100%" height="30" bgcolor="#EFEFEF"><div class="STYLE6" align="center">主角旅行 www.iTours.com.cn</div></td>
        </tr>
        <tr>
          <td height="30" bgcolor="#EFEFEF"><div class="STYLE6" align="center">Add: 成都一環路南三段15號華僑大廈9層<br>
            Tel: +86-28-85580038 / 85562905<br>
            E-mail: info@itours.com.cn </div></td>
        </tr>
      </tbody>
    </table></td>
  </tr>
</tbody></table>
<p></p><p></p>
<p></p><p></p><table class="frametb" align="center">
<tbody><tr>
    <td><div align="center">
<a href="http://www.cnzz.com/stat/website.php?web_id=1261858669" target="_blank" title="站长统计">站长统计</a>  
    </div></td>
  </tr></tbody>
</table>
</div>

