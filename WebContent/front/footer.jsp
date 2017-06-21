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
<table class="frametb" align="center" style="width:100%" width="100%">
  <tr>
    <td width="15%" bgcolor="#CCCCCC"><div align="left" class="STYLE2"><strong>快速搜索</strong></div></td>
    <td width="75%" bgcolor="#CCCCCC" class="f14-gao1" >  
       <strong>旅行方式：</strong><input name="travel_style" id="travel_style" class="easyui-combobox" value="${travelStyle}" data-options="width:130,height:20,valueField:'alias',textField:'type',mode:'remote',panelHeight:'300',editable:false,method:'get',url:'${basePath}travelStyle/loadStyles'">
      <label>
       旅游区域： 
         <input class="easyui-combobox" id="level1Area" name="level1Area" value="${level1Area}" data-options="width:130,height:20,panelHeight:'auto',editable:false">
     	 <input id="level2Area" name="level2Area" class="easyui-combobox" data-options="width:130,height:20,panelHeight:'auto',editable:false"/> 
        假期天数：<a href="javascript:void(0)">
	   <input class="easyui-combobox" data-options="width:130,height:20,editable:false" name="vacation" id="vacation"/>
      </a></label></td>
      <td width="10%" bgcolor="#CCCCCC"><a name="search" href="javascript:itour.footer.searchRtResult()"><img name="search" src="${basePath}images/search.png" width="48" height="48" /></a> </td>
  </tr>
</table>
</form>
<!-- <table width="100%" border="0" align="center" cellpadding="15" cellspacing="0">  
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
</table> -->
<%-- <center>
<div id="links" style="align:center">
   <div class="contents"><a href="http://www.ctrip.cn/" target="_blank"><img src="${basePath }/images/ad/20121209192739900.jpg" style="width:105px;height:36px;border:0px;"></a>
       <a href="http://www.qunar.com/" target="_blank"><img src="${basePath }/images/ad/20121209192856900.jpg" style="width:105px;height:36px;border:0px;"></a>
       <a href="http://www.12306.cn" target="_blank"><img src="${basePath }/images/ad/20121209193221900.jpg" style="width:105px;height:36px;border:0px;"></a>
       <a href="http://www.kuxun.cn/" target="_blank"><img src="${basePath }/images/ad/20121209192108900.jpg" style="width:105px;height:36px;border:0px;"></a>
       <a href="http://www.mangocity.com/" target="_blank"><img src="${basePath }/images/ad/20121209192948900.jpg" style="width:105px;height:36px;border:0px;"></a>
       <a href="http://www.csair.com/cn/" target="_blank"><img src="${basePath }/images/ad/20121209192627900.jpg" style="width:105px;height:36px;border:0px;"></a>
       <a href="http://www.ceair.com/" target="_blank"><img src="${basePath }/images/ad/20121209193103900.jpg" style="width:105px;height:36px;border:0px;"></a>
       <a href="http://www.ch.com" target="_blank"><img src="${basePath }/images/ad/20121209193323900.jpg" style="width:105px;height:36px;border:0px;"></a>
       <a href="http://www.mafengwo.cn/" target="_blank"><img src="${basePath }/images/ad/20120419110149.png" style="width:105px;height:36px;border:0px;"></a>
   </div>
</div>
</center> --%>
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
<!-- <table class="commontb" align="center">
  <tr>
    <td width="1350" height="105" valign="top" bgcolor="#666666">
    <table width="1140" height="60" border="0" align="center" class="lefttxt" cellpadding="20"  cellspacing="0">
      <tbody>
        <tr>
          <td width="1140" height="30" bgcolor="#EFEFEF"><div align="center" class="STYLE6">主角旅行 www.iTours.com.cn</div></td>
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
  <tr>
    <td><div align="center">
<a href="http://www.cnzz.com/stat/website.php?web_id=1261858669" target="_blank" title="站长统计">站长统计</a>	
	</div></td>
  </tr>
</table> -->
</div>

