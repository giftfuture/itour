<%@ page language="java" import="java.lang.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="/WEB-INF/views/server/resource.jsp"  %>
<!DOCTYPE html>
<html>
<head>
 <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
 <meta http-equiv="description" content=""> 
<title>轻旅行</title>
<%-- <script type="text/javascript" src="${basePath}js/jquery-easyui-1.5.1/jquery.min.js"></script>
<script type="text/javascript" src="${basePath}js/commons/package.js"></script> --%>
</head>
<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
   <tr>
    <td> <%@include file="/front/header.jsp"  %> </td>
  </tr>
  <tr>
    <td><img src="images/img/girl-03.jpeg" width="100%" height="100%" /></td>
  </tr>
</table>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="106" valign="top" bgcolor="#fafafa">
    
    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td class="h1-black">轻旅行</td>
      </tr>
      <tr>
        <td class="h1-2">專業團隊為您提供後勤保障</td>
      </tr>
      <tr>
        <td><p>帶上家人，約上朋友 </p>
          <p>登山頂峰<br />  
              <br />
            》》<a href="#">了解更多</a></p>
          <p></p></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td valign="top">&nbsp;</td>
  </tr>
</table>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
<c:forEach begin="0" end="${rows}" varStatus="status">
  <tr>
    <c:forEach items="${rts.get(status.index)}" var="rt" >
    <td valign="top">
    <table width="353" border="0" align="left" cellpadding="0" cellspacing="0">
      <tr>
        <td><table width="300" border="0" align="left" cellpadding="0" cellspacing="0">
            <tr>
             <!--  <td width="57"><img src="images/icon-01.jpg" width="57" height="43" /></td>ISO-8859-1 -->
            <%--   <td width="296" class="h2-24"><a href="${basePath}hiking/detail/${rt.alias}">${rt.title}</a></td> --%>
              <td width="296" class="h2-24"><a href="${basePath}light/light/${rt.alias}">${rt.title}</a></td>
            </tr>
        </table></td>
      </tr>
      <tr>
        <td class="f12-gao1">${rt.shortContent}</td>
      </tr>
      <tr>
        <td><a href="${basePath }light/light/${rt.alias}"><img src="${basePath }${rt.cover}" width="353" height="166" ></a></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
    </table></td>
    </c:forEach>
  </tr></c:forEach>
</table>
<script type="text/javascript" src="${basePath}js/ux/front/light/main.js"></script>
<%@include file="/front/footer.jsp" %>
</body>
</html>
