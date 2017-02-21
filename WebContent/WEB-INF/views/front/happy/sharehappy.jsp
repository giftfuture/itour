<%@ page language="java" import="java.lang.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="/WEB-INF/views/server/resource.jsp"  %> 
<!DOCTYPE html>
<html>
<head>
<title>四姑娘山海子沟徒步、长坪沟穿越毕棚沟</title>
<meta name="description" content="四姑娘山海子沟徒步、长坪沟穿越毕棚沟">
<meta name="keywords" content="四姑娘山登山，四姑娘山露營，四姑娘山穿越，四姑娘山徒步">
</head>
<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td> <%@include file="/front/header.jsp"  %></td>
  </tr>
</table>
<table width="100%" border="0" align="center" cellpadding="10" cellspacing="0">
  <tr>
    <td class="STYLE17"><div align="center"><span class="STYLE19">四姑娘約會四姑娘山</span></div></td>
  </tr>
  <tr>
    <td><img src="images/frame1-1.gif" width="1140" height="7" /></td>
  </tr>
  <tr>
    <td background="images/frame1-2.gif"><table width="1100" border="0" align="center" cellpadding="10" cellspacing="0">
      <tr>
        <td valign="top"><table width="1100" border="0" align="center" cellpadding="10" cellspacing="0">
          <tr>
            <td><span class="STYLE23">旅行時間： </span><span class="STYLE22"><span class="STYLE148">2016-6-28</span> <span class="STYLE148">　<span class="STYLE23">旅行線路：</span>領略自然之美——四姑娘山登山12日游 　　<span class="STYLE23">回憶人：</span><span class="STYLE20">文斐 From 台湾</span></span></span></td>
            </tr>
          <tr>
            <td><table border="0" cellpadding="2" cellspacing="0" class="f12-gao1">
              <tr>
                <td><img src="images/facebook.png" width="24" height="24" /></td>
                <td><a href="#">分享至FB</a></td>
                <td><img src="images/share.png" width="24" height="24" /></td>
                <td><a href="#">复制链接</a></td>
                <td><img src="images/favorite01.png" width="24" height="24" /></td>
                <td><a href="#">收藏本页</a></td>
                <td><img src="images/print.png" width="24" height="24" /></td>
                <td><a href="#">打印页面</a></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td><img src="images/IMG_2413_副本_副本.jpg" width="1072" height="602" /></td>
          </tr>
          <tr>
            <td><div id="summernote">  </div></td>
          </tr>
        </table></td>
      </tr>
      <tr><td>验证码： <input type="text" id="verifyCode" class=" easyui-validatebox" title="验证码" name="verifyCode"  data-options="required:true" nullmsg="请输入验证码!"/><br/>
           <img alt="点击更换" src="${basePath}RandomCodeServlet" id="validateCode" onclick="changeValidateCode()">
           &nbsp;&nbsp;<a href="javascript:void(0)" onclick="changeValidateCode()">看不清，换一张</a></td></tr>
      <tr><td><input type="submit" value="确定"></td><td><input type="button" value="取消"></td></tr>
    </table></td>
  </tr>
  <tr>
    <td><img src="images/frame1-3.gif" width="1140" height="7" /></td>
  </tr>
</table>
<br />

<script type="text/javascript" src="${basePath}js/ux/front/happy/sharehappy.js"></script>
<%@include file="/front/footer.jsp"  %>  
</body>
</html>

