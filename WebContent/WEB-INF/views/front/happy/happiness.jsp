<%@ page language="java" import="java.lang.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="/WEB-INF/views/server/resource.jsp"  %> 
<!DOCTYPE html>
<html>
<head>
 <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
 <meta http-equiv="description" content="This is my page"> 
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
<br />
<table width="100%" border="0" align="center" cellpadding="10" cellspacing="0">
  <tr>
    <td class="STYLE17"><div align="center">回憶幸福~將幸福定格</div></td>
  </tr>
</table>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><img src="${basePath }images/frame1-1.gif" width="1140" height="7" /></td>
  </tr>
  <tr>
    <td background="${basePath }images/frame1-2.gif"><table width="1100" border="0" align="center" cellpadding="10" cellspacing="0">
      <tr>
        <td valign="top">
        <table width="100%" border="0" align="center" cellpadding="10" cellspacing="0">
          <tr>
            <td width="955">※  旅行  是流動的歷程<br />
              ※  感動  是霎那的永恆 <br />
              ※  回憶  是一輩子的幸福風景</td>
            <td width="105"><a href="${basePath}showhappy/sharehappy">《<strong>分享回憶</strong>》</a></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><img src="${basePath }images/frame1-3.gif" width="1140" height="7" /></td>
  </tr>
</table>
<br />
<br />
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><img src="${basePath }images/frame1-1.gif" width="1140" height="7" /></td>
  </tr>
  <tr>
    <td background="${basePath }images/frame1-2.gif">
    <c:forEach var="record" items="${records }">
    <table width="1100" border="0" align="center" cellpadding="10" cellspacing="0">
        <tr>
          <td valign="top"><table width="1000" border="0" cellspacing="0" cellpadding="20">
              <tr>
                <td width="316"><table width="260" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="260"><table border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="181" height="111"><img src="images/Route001.jpg" width="305" height="165" /></td>
                          <td width="11" rowspan="2" valign="bottom"><img src="images/tu-k-02.gif" width="11" height="122" /></td>
                        </tr>
                        <tr>
                          <td><div align="right"><img src="images/tu-k-01.gif" width="191" height="9" /></div></td>
                        </tr>
                    </table></td>
                  </tr>
                </table></td>
                <td width="691" valign="top"><table width="667" border="0" cellpadding="2" cellspacing="2" class="STYLE126">
                  <tr>
                    <td valign="top">&nbsp;</td>
                    <td><span class="STYLE19">${record.title } </span><span class="STYLE22">${record.tourTime }</span></td>
                  </tr>
                  <tr>
                    <td width="20" valign="top"><div align="center"><img src="images/quote-1.gif" /></div></td>
                    <td width="576"><span class="STYLE18">${record.content}<a href="${basePath }showhappy/detail/${record.title}">走进她的回憶</a>》》<img src="images/quote-2.gif" width="18" height="14" /></span></td>
                  </tr>
                  <tr>
                    <td valign="top">&nbsp;</td>
                    <td><div align="right" class="STYLE20">${record.signature } From ${record.area }</div></td>
                  </tr>
                </table></td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
      </c:forEach>
      </td>
  </tr>
  <tr>
    <td><img src="${basePath }images/frame1-3.gif" width="100%" height="7" /></td>
  </tr>
</table>
<script type="text/javascript" src="${basePath}js/ux/front/happy/happiness.js"></script>
<%@include file="/front/footer.jsp"  %>  
</body>
</html>

