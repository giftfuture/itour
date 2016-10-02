<%@ page language="java" import="java.lang.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%    
String path = request.getContextPath();    
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";    
pageContext.setAttribute("basePath",basePath);    
%>
 <script type="text/javascript" src="${basePath}js/jquery-2.1.1.min.js"></script>
 <script type="text/javascript">
 var basePath = '${basePath}';
</script>
<form name="searchForm" action="" method="post">
<table width="100%" border="0" align="center" cellpadding="5" cellspacing="0">
  <tr>
    <td width="30px" bgcolor="#CCCCCC"><img src="${basePath}images/search.png" width="48" height="48" /></td>
    <td width="50px" bgcolor="#CCCCCC"><div align="center" class="STYLE2">快速搜索</div></td>
    <td width="50px" bgcolor="#CCCCCC" class="f14-gao1" >  
  	<!-- <font color="#E2FAE4">@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@</font>   -->
       旅行方式：
        <select name="travel_style">
          <option selected="selected">-所有-</option>
        </select>
        <br />旅游区域：
      <label>
        <select name="areas">
          <option>全部區域</option>
          <option>四川</option>
          <option>西藏</option>
          <option>新疆</option>
          <option>云南</option>
       </select>
        <br />
   
        假期天数：<a href="javascript:void(0)">
<select name="vacation">
  <option selected="selected">-所有-</option>
  <option value="1-5">1-5天</option>
  <option value="6-9">6-9天</option>
  <option value="10-15">10-15天</option>
  <option value="16">16天+</option>
</select>
      </a></label></td>
    <td width="50px" bgcolor="#CCCCCC" class="f14-gao1"><input type="submit" name="Submit" value="搜索" /></td>
  </tr>
</table>
</form>
<p>&nbsp;</p>
<table width="100%" border="0" align="center" cellpadding="15" cellspacing="0">  
  <tr>
    <td height="106" valign="top" bgcolor="#fafafa">
    <table width="100%" border="0" align="center" cellpadding="5" cellspacing="0">
      <tr>
        <td width="210"><strong>一些關鍵字</strong></td>
        <td width="210"><strong>页脚待定</strong></td>
        <td width="210"><strong>页脚待定</strong></td>
        <td width="210"><strong>页脚待定</strong></td>
        <td width="210"><strong>页脚待定</strong></td>
      </tr>
      <tr>
        <td valign="top"><p>四川旅游<br />
        四川旅游<br />
        四川旅游<br />
        四川旅游<br />
        四川旅游<br />
        四川旅游</p>          </td>
        <td valign="top">四川旅游<br />
四川旅游<br />
四川旅游<br />
四川旅游<br />
四川旅游<br />
四川旅游</td>
        <td valign="top">四川旅游<br />
四川旅游<br />
四川旅游<br />
四川旅游<br />
四川旅游<br />
四川旅游</td>
        <td valign="top">四川旅游<br />
四川旅游<br />
四川旅游<br />
四川旅游<br />
四川旅游<br />
四川旅游</td>
        <td valign="top">四川旅游<br />
四川旅游<br />
四川旅游<br />
四川旅游<br />
四川旅游<br />
四川旅游</td>
      </tr>
    </table></td>
  </tr>
</table>
<br />
<br />
<table width="100%" border="0" align="center" cellpadding="20" cellspacing="0" class="lefttxt">
  <tr>
    <td width="100%" height="105" valign="top" bgcolor="#666666">
    <table width="100%" height="60" border="0" align="center" cellpadding="0" cellspacing="0">
      <tbody>
        <tr>
          <td width="100%" height="30" bgcolor="#EFEFEF"><div align="center" class="STYLE6">主角旅行 www.iTours.com.cn</div></td>
        </tr>
        <tr>
          <td height="30" bgcolor="#EFEFEF"><div align="center" class="STYLE6">Add: 成都一環路南三段15號華僑大廈9層<br />
            Tel: +86-28-85580038 / 85562905<br />
            E-mail: info@itours.com.cn </div></td>
        </tr>
      </tbody>
    </table>
    </td>
  </tr>
</table>
<script type="text/javascript" src="${basePath}js/commons/package.js"></script>
<script type="text/javascript" src="${basePath}js/ux/front/footer.js"></script>