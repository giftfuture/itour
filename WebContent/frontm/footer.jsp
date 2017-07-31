 <%@ page language="java" import="java.lang.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<script type="text/javascript" src="${basePath}jsm/commons/package.js"></script>
<script type="text/javascript">
 var rcdDays='${rcdDays}';
 var level1Area ='${level1Area}';
 var level2Area = '${level2Area}';
</script>
<div width="100%" style="width:100%"  data-role="content"  data-fullscreen="true">
<form name="searchForm" method="post">
<table class="commontb" align="center"  width="100%"  height="100%" style="width:100%;height:150px;"  data-role="content"  data-fullscreen="true">
  <tr>
    <td width="15%" bgcolor="#CCCCCC"><div align="left" class="STYLE2"><strong>快速搜索</strong></div></td>
    <td width="75%" bgcolor="#CCCCCC" class="f14-gao1" >  
       <p style="height:15px"><span style="text-align:left"><strong>旅行方式：</strong>&nbsp;<input name="travel_style" id="travel_style" class="easyui-combobox" value="${travelStyle}" data-options="width:120,minWidth:50,height:22,valueField:'alias',textField:'type',mode:'remote',panelHeight:'150',editable:false,method:'get',url:'${basePath}travelStyle/loadStyles',prompt:'-所有-'"/></span></p>
      <p style="height:15px"><span style="text-align:left">
       <strong>一级区域： </strong>
         <input class="easyui-combobox" id="level1Area" name="level1Area" value="${level1Area}" data-options="width:120,minWidth:50,height:22,panelHeight:'auto',editable:false,prompt:'-所有-'"/></span></p>
         <p style="height:15px">&nbsp;<span style="text-align:left"><strong>二级区域：</strong><input id="level2Area" name="level2Area" class="easyui-combobox" data-options="width:120,minWidth:50,height:22,panelHeight:'auto',editable:false,prompt:'-所有-'"/></span> 
         </p>
        <p style="height:15px"><span style="text-align:left"><strong>假期天数：</strong><a href="javascript:void(0)">
    <input class="easyui-combobox" data-options="width:120,minWidth:50,height:22,editable:false,prompt:'-所有-'" name="vacation" id="vacation"/>
      </a></span></p></td>
      <td width="10%" bgcolor="#CCCCCC"><a name="search" href="javascript:itour.footer.searchRtResult()"><img name="search" src="${basePath}images/search.png" width="48" height="48" /></a> </td>
  </tr>
</table>
</form>
<table width="100%" border="0" align="center" cellpadding="5" cellspacing="0" bgcolor="#fafafa" name="keyfooter" style="margin-top:30;background-color:#fafafa;" >
   </table>
<table class="commontb"  align="center" width="100%" style="margin-top:30px;width:100%" data-role="content"  data-fullscreen="true">
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
<p></p><p></p>
<table align="center" class="commontb" width="100%" style="width:100%" data-role="content"  data-fullscreen="true">
<tbody><tr>
    <td><div align="center">
<a href="http://www.cnzz.com/stat/website.php?web_id=1261858669" target="_blank" title="站长统计">站长统计</a>  
    </div></td>
  </tr></tbody>
</table>
</div>
<script type="text/javascript" src="${basePath}jsm/ux/front/footer.js"></script>  