 <%@ page language="java" import="java.lang.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%-- <script type="text/javascript" src="${basePath}js/jquery-easyui-1.5.1/jquery.min.js"></script> --%>
<form name="searchForm" action="search" method="post">
<table class="commontb" align="center">
  <tr>
    <td width="15%" bgcolor="#CCCCCC"><img src="${basePath}images/search.png" width="48" height="48" /></td>
    <td width="15%" bgcolor="#CCCCCC"><div align="left" class="STYLE2">快速搜索</div></td>
    <td width="55%" bgcolor="#CCCCCC" class="f14-gao1" >  
       旅行方式：<input name="travel_style" id="travel_style" class="easyui-combobox"  data-options="width:130,height:20,valueField:'alias',textField:'type',mode:'remote',panelHeight:'auto',editable:false,method:'get',url:'${basePath}travelStyle/loadStyles'">
      <label>
       旅游区域：
        <%-- <input name="areas" id="areas" class="easyui-combobox"  data-options="width:130,height:20,valueField:'scopeAlias',textField:'scope',mode:'remote',panelHeight:'auto',editable:false,method:'get',url:'${basePath}travelItem/allScopes'"> --%>
         <input class="easyui-combobox" id="level1Area" name="level1Area" data-options="width:130,height:20,valueField:'aliasCode',textField:'level1Area',mode:'remote',method:'get',panelHeight:'auto',editable:false, url:'${basePath}levelarea/queryLevel1',
        onChange:function(n,o){var urlurl = '${basePath}levelarea/queryLevel2ByLevel1?aliasCode='+n ;$('#level2Area').combobox('reload',urlurl);}">
    	 <input id="level2Area" name="level2Area" class="easyui-combobox" data-options="width:130,height:20,valueField:'aliasCode',textField:'level2Area',mode:'remote',panelHeight:'auto',editable:false, method:'get'">     
        假期天数：<a href="javascript:void(0)">
	<select class="easyui-combobox" data-options="width:130,height:20,editable:false" name="vacation" id="vacation">
	  <option value="">-所有-</option>
	  <option value="1-5">1-5天</option>
	  <option value="6-9">6-9天</option>
	  <option value="10-15">10-15天</option>
	  <option value="16">16天+</option>
	</select>
      </a></label></td>
    <td width="15%" bgcolor="#CCCCCC" class="f14-gao1"><a class="easyui-linkbutton" iconcls="icon-search" id="searchbtn">搜索</a></td>
  </tr>
</table>
</form>
<p>&nbsp;</p>
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
<center>
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
</center>
<table class="commontb" align="center">
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
<script type="text/javascript">
/* var areas = $("#areas").combobox('getValue'); 
console.log(travel_style+"  "+vacation+"   "+areas); */
</script>
<script type="text/javascript" src="${basePath}js/commons/package.js"></script>
<script type="text/javascript" src="${basePath}js/ux/front/footer.js"></script>  