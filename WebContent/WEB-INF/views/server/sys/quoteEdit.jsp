<%@ page language="java" import="java.lang.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="/WEB-INF/views/server/resource.jsp"  %>
<!DOCTYPE html>
<html>
<head>
 <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
 <meta http-equiv="description" content="This is my page"> 
<title>路线价目详情</title>
<script type="text/javascript" src="${basePath}js/ux/sys/quoteEdit.js"></script>
</head>
<body ><!-- class="easyui-layout" -->
<form:form method="post" action="${basePath }routeTemplate/list">
<input type="submit" value="返回">
</form:form>
<form:form method="post" name="quoteEditForm">
<input type="hidden" name="rtId" value="${bean.id}">
<div id="quoteForm">
<table width="80%" cellspacing="0" cellpadding="0" border="0" align="center">
  <tbody><tr>
    <td><img src="images/frame1-1.gif" width="100%" height="7"></td>
  </tr>
  <tr>
    <td background="images/frame1-2.gif"><table width="100%" cellspacing="0" cellpadding="0" border="0" align="center">
      <tbody><tr>
        <td width="685"><table width="1053" cellspacing="0" cellpadding="0" border="0">
          <tbody><tr>
            <td width="32"><img src="images/man.gif" width="32" height="32"></td>
            <td width="1021"><span class="style148"><span class="style24">来自：</span>${bean.city }${bean.district }${bean.customerName} <span class="STYLE24">团号：</span>itours160701a <span class="STYLE149">出团日期：</span>2016-7-2 <span class="STYLE149">人数：</span>4大2小 </span></td>
          </tr>
        </tbody></table></td>
      </tr>
    </tbody></table></td>
  </tr>
  <tr>
    <td><img src="images/frame1-3.gif" width="100%" height="7"></td>
  </tr>
</tbody></table>
<table width="80%" cellspacing="0" cellpadding="10" border="0" align="center">
  <tbody><tr>
    <td class="h1-black">四姑娘山海子沟徒步、长坪沟穿越毕棚沟<span class="STYLE27"> 第一次方案 </span></td>
  </tr>
</tbody></table>
<br>
<span class="style10">备注：提前要连接好客人的信息，团号，出团日期，人数几大几小。</span><br>
<table width="80%" cellspacing="0" cellpadding="0" border="0" align="center">
  <tbody><tr>
    <td><img src="images/frame1-1.gif" width="100%" height="7"></td>
  </tr>
  <tr>
    <td background="images/frame1-2.gif">
    <table width="100%" cellspacing="0" cellpadding="10" border="0" align="center">
        <tbody><tr>
          <td class="STYLE126" width="761" valign="top"><span class="STYLE3">简要行程</span><span class="STYLE2">：</span></td>
        </tr>
      </tbody></table>
      <table name="routetable" width="80%" cellspacing="1" cellpadding="5" border="0" align="center">
        <thead><tr>
          <td class="STYLE129" valign="middle" bgcolor="#F0F0F0" height="31"><div class="style18" align="center">
            <div align="center"><strong><strong>天数</strong></strong></div>
          </div></td>
          <td class="STYLE23" valign="middle" bgcolor="#F0F0F0">日期</td>
          <td class="STYLE23" valign="middle" bgcolor="#F0F0F0">星期</td>
          <td class="STYLE129" valign="middle" bgcolor="#F0F0F0"><div class="STYLE18" align="center">
            <div align="center"><strong><strong>行程</strong></strong></div>
          </div></td>
          <td class="STYLE129" valign="middle" bgcolor="#F0F0F0"><div class="STYLE18" align="center">
            <div align="center">里程</div>
          </div></td>
          <td class="STYLE129" valign="middle" bgcolor="#F0F0F0"><div class="STYLE18" align="center">
            <div align="center">景点</div>
          </div></td>
          <td class="STYLE23" valign="middle" bgcolor="#F0F0F0"><div align="center" style="width:267px">餐食</div></td>
          <td class="STYLE129" valign="middle" bgcolor="#F0F0F0"><div class="STYLE18" align="center">
            <div align="center">住宿(城镇)</div>
          </div></td>
          <td class="STYLE23" valign="middle" bgcolor="#F0F0F0"><div align="center">酒店</div></td>
          <td class="STYLE23" valign="middle" bgcolor="#F0F0F0"><div align="center">元/间</div></td>
          <td><a name="routeplus"><img alt="" src="${basePath }images/add.gif"></a></td>
        </tr>
        </thead>
        <tbody>
        <tr>
          <td class="STYLE126" width="34" valign="middle"><div align="center"></div></td>
          <td class="STYLE126" width="55" valign="middle">
          <input name="tourTime" class="easyui-datebox" data-options="editable:false,required:true,region:'north',split:true,border:false" style="width:100px;"/></td>
          <td class="STYLE126" width="35" valign="middle">
          <select name="tourWeekday"><option>周日</option>
          <option>周一</option>
          <option>周二</option>
          <option>周三</option>
          <option>周四</option>
          <option>周五</option>
          <option>周六</option></select></td>
          <td class="STYLE126" width="308" valign="middle"><input type="text" name="tourDesc"></td>
          <td class="STYLE126" width="50" valign="middle"><input name="mileage" type="number" min=0 onkeyup="(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this)" onblur="this.v();"></td>
          <td class="STYLE126" width="124" valign="middle"><input type="text" name="travelItem" class="easyui-combobox"  style="width:100px;" data-options="valueField:'alias',textField:'item',mode:'remote',panelHeight:'auto',editable:false,method:'get',url:'${basePath}travelItem/allItems'"></td>
          <td class="STYLE126" width="267" valign="middle">早餐：<input name="breakfast" checked="checked" type="checkbox">
		          中餐：<input name="lunch" checked="checked" type="checkbox">
		          晚餐：<input name="dinner" checked="checked" type="checkbox"></td>
          <td class="STYLE126" width="57" valign="middle"><input type="text" name="stayposition"></td>
          <td class="STYLE126" width="171" valign="middle"><select name="hotel" id="hotel">
            <option>选择该城市酒店</option>
            <option>贵山商务酒店</option>
            <option>嘉绒酒店</option></select>
            <input name="selfhotel" size="10" type="text">
            <br>*也可自己填写</td>
          <td class="STYLE126" width="88" valign="middle"><input name="hotelprice" size="6" type="number" min=0 onkeyup="(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this)" onblur="this.v();"></td>
       	  <td class="STYLE126" valign="middle"><a name=routeminus onclick="javascript:itour.quoteEdit.routeMinus(this)"><img alt="" style="width:16px;height:16px;" src="${basePath }images/minus.png"></a></td>
        </tr>
        <tr>
          <td class="STYLE126" valign="middle">&nbsp;</td>
          <td class="STYLE126" valign="middle">&nbsp;</td>
          <td class="STYLE126" valign="middle">&nbsp;</td>
          <td class="STYLE126" valign="middle">&nbsp;</td>
          <td class="STYLE126" valign="middle">&nbsp;</td>
          <td class="STYLE126" valign="middle" colspan="3"><input name="route_checkall" checked="checked" type="checkbox">全选/全不选 </td>
          <td class="STYLE126" valign="middle">*没选则表示不含</td>
          <td class="STYLE126" valign="middle">&nbsp;</td>
          <td class="STYLE126" valign="middle">&nbsp;</td>
        </tr>
      </tbody></table>
      <br></td>
  </tr>
  <tr>
    <td><img src="images/frame1-3.gif" width="100%" height="7"></td>
  </tr>
</tbody></table>
<br>
<table width="80%" cellspacing="2" cellpadding="8" border="1" align="center">
  <tbody><tr>
    <td width="78"><strong>项目</strong></td>
    <td width="639"><div align="center"><strong>成本及计算</strong></div></td>
    <td width="39"><div align="center">小孩</div></td>
    <td width="360"><div class="STYLE10" align="center"><strong>说明</strong></div></td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0"><div align="right"><strong>人数： </strong></div></td>
    <td><label> 大人：<span class="style126" >
    <input name="adults" size="6" type="number" min=0 onkeyup="(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this)" onblur="this.v();">
    	人&nbsp;&nbsp; 小孩 
    <input name="children"  size="6" type="number" min=0 onkeyup="(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this)" onblur="this.v();">
    </span> 人     
    （
    <input name="isAsAdult" value="isAsAdult" type="radio">
      同大人一样
      <input name="isAsAdult" value="isAsChild" checked="checked" type="radio">
      按小孩核算）</label></td>
    <td><div align="center"></div></td>
    <td><span class="STYLE10">。同大人一样则把核算项目中的成人人数变为 成人+小孩 ， 平摊费用 <br>
      。按小孩计算则计算勾选项目，未勾选的项目需在报价上面显示不含这些项目。<br>
      。小数点后面的去零取整</span></td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0"><p align="right"><strong>门票：</strong></p></td>
    <td><div><!-- <span class="STYLE144">根据制定行程时所选的景点，按对应的日期显示景点名称及相应各价格明细 ——如果觉得管理后台太麻烦的话也可以直接手动输入 <span class="STYLE145">？ </span><br>
      </span> <span class="STYLE126"> 1.</span>海子沟
      <input name="checkbox734" value="checkbox" checked="checked" type="checkbox">
      门票 50元/人
      <input name="checkbox7324" value="checkbox" checked="checked" type="checkbox">
      户外门票150元/人 <br>
      <span class="STYLE126">2.</span>长坪沟
      <input name="checkbox7342" value="checkbox" checked="checked" type="checkbox">
      门票50元/人
      <input name="checkbox73242" value="checkbox" checked="checked" type="checkbox">
      观光车 20元/人 
      <input name="checkbox73246" value="checkbox" checked="checked" type="checkbox">
      户外门票150元/人 <br>
      <span class="STYLE126">3.毕棚沟
        <input name="checkbox73422" value="checkbox" checked="checked" type="checkbox">
        门票80元/人
  <input name="checkbox732422" value="checkbox" checked="checked" type="checkbox">
        观光车 70元/人
  <input name="checkbox732462" value="checkbox" checked="checked" type="checkbox">
        电瓶车A-B 20</span><span class="STYLE126">元/人 </span><span class="STYLE126">
        <input name="checkbox7324622" value="checkbox" checked="checked" type="checkbox">
电瓶车B-C 20</span><span class="STYLE126">元/人 </span>  -->
        <br> 
      添加景区：<a name="addSight" ><img src="images/add.gif" width="16" height="16" ></a> <br>
      <div id="addsightdiv">
      		<span class=STYLE126> 景点名称
			<input name=sight size=20 type=text>
			<input name=sightprice size=6 type=number min=0 onkeyup="(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();">
			元/人<a name=minusSight><img src=images/minus.png  onclick='javascript:itour.quoteEdit.sightMinus(this)' width=20 height=20  ></a></span>
      </div>
     </div>      </td>
    <td><div align="center">
      <input name="ticketAsadult" value="" type="checkbox">
    </div></td>
    <td><span class="STYLE10">需要进行单独管理（可以按时间点选门票里面的项目，及按日期出来的价格）<br>
      。报价单上面可以显示或不显示门票明细及价格<br>
      后台可以查看到。</span></td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0"><div align="right"><strong>旅行证件</strong></div></td>
    <td>添加证件：<a name="addCard" ><img src="images/add.gif" width="16" height="16" ></a> 
    <div id="addcarddiv">
    <span class="STYLE126"><br>
      <input name="card" value="入藏函" size="20" type="text">
          <input name="cardprice" size="6" type=number min=0 onkeyup="(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();">
      	元/人&nbsp;&nbsp;备注：
        <input name="cardremark" size="20" type="text">
        <a name=minusCard><img src=images/minus.png onclick='javascript:itour.quoteEdit.cardMinus(this)' width=20 height=20 ></a>
        </span> 
      	<span class="STYLE126"><br>
        <input name="card" value="边防证" size="20" type="text">
        <input name="cardprice" size="6" type=number min=0 onkeyup="(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();">
        元/人&nbsp;&nbsp;备注：
          <input name="cardremark" size="20" type="text">
          <a name=minusCard><img src=images/minus.png onclick='javascript:itour.quoteEdit.cardMinus(this)' width=20 height=20 ></a>
        </span></div></td>
    <td><div align="center">
      <input name="traveldocAsadult" checked="checked" type="checkbox">
    </div></td>
    <td><span class="STYLE10"></span></td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0"><div align="right"><strong>导游：</strong></div></td>
    <td>添加导游：<a name="addGuide" ><img src="images/add.gif" width="16" height="16" ></a> 
    <div id="addGuideDiv">
    <span class="style126">
       <br><input name="alltheway" value="全程" size="10" type="text">
          <select name="choselanguage" id="choselanguage">
            <option>选择语种</option>
            <option value="中文">中文</option>
            <option value="英文">英文</option>
          </select>
        <input name="priceperday" size="6" style='width:50px' type=number min=0 onkeyup="(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();">
      	  元/天 &nbsp;&nbsp;X 
          <input name="days"  size="6" style='width:50px' type=number min=0 onkeyup="(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();">
          	天 &nbsp;&nbsp;备注：
            <input name="guideremark" size="10" type="text">
            <a name=guideminus onclick='javascript:itour.quoteEdit.guideMinus(this)'><img alt='' style='height:16px;height:16px;' src='images/minus.png' ></a>
          </span></div></td>
    <td><div align="center">
      <input name="tourguideAsadult" type="checkbox">
    </div></td>
    <td><span class="STYLE10">。多少钱一天在后台根据淡旺季和语种管理<br>
      。天数默认为行程天数<br>
      ——算出总价，平摊到团员</span></td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0"><div align="right"><strong>酒店：<br>
    </strong></div></td>
    <td>
    请在概要行程里面填写价格，请<span class="STYLE129">务必注意节假日及会议期间</span>哟。</td>
    <td><div align="center">
     <!--  <input name="hotelAsadult" checked="checked" type="checkbox"> -->
    </div></td>
    <td><span class="STYLE10">。后台可选择酒店名称，但无需管理价格。<br>
      。可能会有单房差</span></td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0"><strong>用车：
    <br>
    </strong></td>
    <td>添加用车：<a name="addusecar" ><img src="images/add.gif" width="16" height="16" ></a> 
    <div id="addcardiv">
    <span class="STYLE126"><br> 
      <input name="alltheway" value="全程" size="10" type="text">&nbsp;
        <input name="carprice" size="6" style='width:50px' type=number min=0 onkeyup="(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();">
        	元/ <select name="carstyle" id="carstyle">
            <option selected="selected">方式</option>
            <option value="天">天</option>
            <option value="公里">公里 </option>
            <option value="趟">趟</option>
          </select> X   <input name="carcount" size="6" style='width:50px' type=number min=0 onkeyup="(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();">
             	数量&nbsp;&nbsp;　备注： 
              <input name="carremark" size="20" type="text">
              <a name=carminus onclick='javascript:itour.quoteEdit.carMinus(this)'><img alt='' style='height:20px;height:20px;' src='images/minus.png' ></a></span>
     </div></td>
    <td><div align="center">
      <input name="rentcarAsadult" checked="checked" type="checkbox">
    </div></td>
    <td><span class="STYLE10">——算出总价，平摊到团员。<br>
    方式若选择天的话，自动在后面的数量里面补上1（这个容易被忘掉，那算出来就变成 0了）</span></td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0"><div align="right"><strong>大交通：<br>
    </strong></div></td>
    <td>添加大交通：<a name="addbigtraffic" ><img src="images/add.gif" width="16" height="16" ></a> 
      <label>
        <input name="train-ticket" value="bigTrafficSum" type="radio">
      </label>
      计入总价
      <label>
        <input name="train-ticket" value="train-ticket" checked="checked" type="radio">
        另外核算</label>
      （火车票、机票、大巴票等）<br>
    	<div id="addbigtrafficdiv">
    <span class="style126">
      <input name="trafficpersons" size="6"   type=number min=0 onkeyup="(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();">
        <input name="trafficperprice" size="6" type=number min=0 onkeyup="(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();">
        	元/ 人 &nbsp;&nbsp;备注：
          <input name="trafficremark" size="20" type="text">
          <a name=trafficminus onclick='javascript:itour.quoteEdit.trafficMinus(this)'><img alt='' style='height:20px;height:20px;' src='images/minus.png' ></a>
        </span>
            </div>  </td>
    <td><div align="center">
      <input name="bigtrafficeAsadult" checked="checked" type="checkbox">
    </div></td>
    <td><span class="STYLE10">可以不同的几段计入<br>
      另外核算则写在总价后面。</span></td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0">
    <div align="right"><strong>用餐：<br>
    </strong></div></td>
    <td>添加用餐：<a name="adddinner" ><img src="images/add.gif" width="16" height="16" ></a> 
    <div id="dinnerblock">
      <label><input name="dinnerprice" checked="checked" type="checkbox">
      </label>
      餐标：<span class="style126">
        <input name="singledinner" value="30" size="6" type=number min=0 onkeyup="(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();">
        </span>元/人餐<br>

<div id="specialdinnerblock">
<table cellspacing="0" cellpadding="2" border="0">
  <tbody><tr><td>安排特色餐：<a name="addspecialdinner" ><img src="images/add.gif" width="16" height="16" ></a> </td><td rowspan="4"><select name="province"><option>四川</option> <option>云南</option> <option>西藏</option><option>新疆</option> </select></td></tr></tbody>
  <tbody><tr><td><input name="district" size="10" type="text"></td>
    <td><span class="style126">餐名：<input name="dinnername" size="10" type="text">&nbsp;
        <input name="dinnerprice" size="6" style='width:50px' type=number min=0 onkeyup="(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();">
                元/人 </span></td>
    <td><a name="addsingledinner" ><img src="images/add.gif" width="16" height="16" ></a> </td>
  </tr></tbody>
  <tbody><tr>
    <td><input name="district" size="10" type="text"></td>
    <td>餐名：<input name="dinnername" size="10" type="text">&nbsp;
        <input name="dinnerprice" size="6" style='width:50px' type=number min=0 onkeyup="(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();">
 		 元/人</td>
 	 <td><a name="addsingledinner" ><img src="images/add.gif" width="16" height="16" ></a> </td> 
  </tr>
</tbody></table>
</div>
</div></td>
    <td><div align="center">
      <!-- <input name="checkbox34" value="checkbox" checked="checked" type="checkbox"> -->
    </div>
    </td>
    <td><span class="STYLE10">。后台按勾选来算餐数，特色餐数量需要减出来。<br>
  。特色餐可提前设定，勾选，核算价格的时候需要扣出来已经算入的午餐或晚餐</span></td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0">
    <div align="right"><strong>保险：</strong></div></td>
    <td>添加保险：<a name="addinsurance" ><img src="images/add.gif" width="16" height="16" ></a> 
    <div id="insurancediv"><span class="style126"><br>
      <select name="insuranceselect" id="insuranceselect">
          <option value="人">内宾旅游意外保险</option>
          <option value="团">入境旅游意外保险</option>
       </select>
          <input name="insuranceprice" size="6" type=number min=0 onkeyup="(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();">
          	元/人&nbsp;&nbsp;备注：
            <input name="insuranceremark" size="20" type="text">
          <a name=insuranceminus onclick='javascript:itour.quoteEdit.insuranceMinus(this)'><img alt='' style='height:20px;height:20px;' src='images/minus.png' ></a></span></div></td>
    <td><div align="center">
      <input name="insuranceAsadult" checked="checked" type="checkbox">
    </div></td>
    <td><span class="STYLE10">内宾10元，外宾30元 </span></td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0">
    <div align="right"><strong>综费</strong>：</div></td>
    <td>添加综费：<a name="addallfees" ><img src="images/add.gif" width="16" height="16" ></a> 
    <div id="allfeesdiv"><span class="STYLE126"><br>
      <input name="feeName" value="旅行社综合服务费" size="20" type="text">
          <input name="feeperperson" size="6" type=number min=0 onkeyup="(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();">
       	元/人&nbsp;&nbsp;备注：
        <input name="feeremark" size="20" type="text">
      <a name=allfeeminus onclick='javascript:itour.quoteEdit.allfeeMinus(this)'><img alt='' style='height:20px;height:20px;' src='images/minus.png' ></a></span></div></td>
    <td><div align="center">
      <input name="comphcostAsadult" type="checkbox">
    </div></td>
    <td><span class="style10"></span></td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0"><div align="right"><strong>娱乐：</strong></div></td>
    <td>添加娱乐：<a name="addjoys" ><img src="images/add.gif" width="16" height="16" ></a> 
    <div id="addjoysdiv"><span class="STYLE126"><br>
      <input name="joyitem" size="20" type="text">
          <input name="perjoyprice" size="6" type=number min=0 onkeyup="(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();">
      		元/人　&nbsp;&nbsp;备注：
        <input name="joyremark" size="20" type="text">
       <a name='joyminus' onclick='javascript:itour.quoteEdit.joyMinus(this)'><img alt='' style='height:20px;height:20px;' src='images/minus.png' ></a></span></div></td>
    <td><div align="center">
      <input name="recreationAsadult" checked="checked" type="checkbox">
    </div></td>
    <td><span class="style10"></span></td>
  </tr>
  <tr>
    <td colspan="4"><div align="center">徒步登山项目</div></td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0"><div align="right"><strong>向导</strong></div></td>
    <td>添加徒步向导：<a name="addhikingguide" ><img src="images/add.gif" width="16" height="16" ></a> 
    <div id="hikingguidediv"><span class="style126"> <br>
      <input name="hikingitem" size="20" type="text">
      <input name="guidename" size="4" type="text">
      向导数 X
      <input name="guideperday" size="6" style="width:50px" type=number min=0 onkeyup="(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();">
       	元/天 X  
        <input name="guidedays" size="4" style="width:50px" type=number min=0 onkeyup="(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();">
        	天　&nbsp;&nbsp;备注：
          <input name="hikingguideremark" size="20" type="text">
        <a name=joyminus onclick='javascript:itour.quoteEdit.joyMinus(this)'><img alt='' style='height:20px;height:20px;' src='images/minus.png' ></a></span> 
        	</div></td>       
    <td><div align="center">  
      <input name="itemguideAsadult" checked="checked" type="checkbox">
    </div></td>
    <td><span class="style10">——算出总价，平摊到团员。</span></td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0"><div align="right"><strong>驮马费</strong></div></td>
    <td>添加驮马费：<a name="addbathorseCost" ><img src="images/add.gif" width="16" height="16" ></a> 
    <div id="bathorseCostdiv"><span class="STYLE126"><br>
      <input name="bathorseCost" size="20" type="text">
          <input name="bathorsenum" size="4" style="width:50px" type=number min=0 onkeyup="(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();">
      马匹数 X
      <input name="bathorseperday" size="6" style="width:50px" type=number min=0 onkeyup="(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();">
      	元/天  X  
        <input name="bathorseprice" size="4" style="width:50px" type=number min=0 onkeyup="(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();">
         	 天　&nbsp;&nbsp;备注：
          <input name="bathorseremark" size="20" type="text">
        <a name=bathorseminus onclick='javascript:itour.quoteEdit.bathhorseMinus(this)'><img alt='' style='height:20px;height:20px;' src='images/minus.png' ></a></span> 
        </div></td>
    <td><div align="center">
      <input name="bathcostAsadult" checked="checked" type="checkbox">
    </div></td>
    <td><span class="STYLE10">——算出总价，平摊到团员。</span></td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0"><div align="right"><strong>骑马费</strong></div></td>
    <td>添加骑马费：<a name="addridehorseCost" id="addridehorseCost" ><img src="images/add.gif" width="16" height="16" ></a> 
    <div id="ridehorseCostdiv"><span class="STYLE126"><br>
      <input name="ridehorse" size="20" type="text">
          <input name="ridehorseperday" size="6" type="text">
       	元/天  X<input name="ridehorsedays" size="4" type=number min=0 onkeyup="(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();">
       	天　&nbsp;&nbsp;备注：<input name="ridehorseremark" size="20" type="text">
           <a name=rideorseminus onclick='javascript:itour.quoteEdit.ridehorseMinus(this)'><img alt='' style='height:20px;height:20px;' src='images/minus.png' ></a></span> 　
           </div>
     </td>
    <td><div align="center">
      <input name="ridecostAsadult" checked="checked" type="checkbox">
    </div></td>
    <td><span class="STYLE10">？若只是部分客人的怎么办？单独写在备注里面</span></td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0"><div align="right"><strong>登山注册费</strong></div></td>
    <td>添加登山注册费：<a name="addclimbregisterCost" ><img src="images/add.gif" width="16" height="16" ></a> 
    <div id="climbregisterdiv"> <span class=style126><br> 
	<input name=climbRegister size=20 type=text><input name=climbRegisterperday size=6 type=text>
	元/天  X<input name=climbRegisterdays size=4 type=number min=0 onkeyup=(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();>
	天　&nbsp;&nbsp;备注：<input name=climbRegisterremark size=20 type=text> 
	<a name=climbRegisterminus onclick='javascript:itour.quoteEdit.climbRegisterMinus(this)'><img alt='' style='height:20px;height:20px;' src='images/minus.png' ></a>
      </span></div></td>
    <td><div align="center">
      <input name="climbrcostAsadult" checked="checked" type="checkbox">
    </div></td>
    <td><span class="style10"></span></td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0"><div align="right"><strong>登协联络官</strong></div></td>
    <td>添加登协联络官：<a name="addclimbnexusCost" ><img src="images/add.gif" width="16" height="16" ></a> 
    <div id="climbnexusdiv"><span class="style126"><br>
      <input name=climbnexus size="20" type="text">
          <input name="climbnexusnum" value="1" size="4" type=number min=0 onkeyup=(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();>
      人数 X
      <input name="climbnexusperday" size="6" type=number min=0 onkeyup=(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();>
       	元/天  X  
        <input name="climbnexusdays" size="4" type=number min=0 onkeyup=(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();>
        	天　&nbsp;&nbsp;备注：
          <input name="climbnexusremark" size="20" type="text">
        <a name=climbnexusminus onclick='javascript:itour.quoteEdit.climbnexusMinus(this)'><img alt='' style='height:20px;height:20px;' src='images/minus.png' ></span>
        </div></td>
    <td><div align="center">
      <input name="climbncostAsadult" value="checkbox" checked="checked" type="checkbox">
    </div></td>
    <td><span class="STYLE10"></span></td>
  </tr>
  <tr>
    <td colspan="4"><span class="STYLE10"></span></td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0"><div align="right"><strong>其它 </strong></div></td>
    <td>其他费用：<a name="addelseitem" ><img src="images/add.gif" width="16" height="16" ></a> 
    <div id="elseitemdiv"><span class="STYLE126"><br>
      <input name="elseitem" size="20" type="text">
        <input name="elseitemprice" size="6" type=number min=0 onkeyup=(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this) onblur=this.v();>
       	  元/	<select name="elseitemstyle" id="elseitemstyle">
            <option selected="selected">方式</option>
            <option value="人">人</option>
            <option value="团">团</option>
          </select>
           	　备注：<input name="elseitemremark" size="20" type="text">
           	 <a name=elseitemminus onclick='javascript:itour.quoteEdit.elsefeeMinus(this)'><img alt='' style='height:20px;height:20px;' src='images/minus.png' >
            </span></div>
      </td>
    <td><div align="center">
      <input name="elsecostAsadult" checked="checked" type="checkbox">
    </div></td>
    <td><span class="style10"></span></td>
  </tr>
  <tr>
    <td><div align="right"></div></td>
    <td>赠送项目：<input type="text" name="presented" value="氧气，每日饮用水"/></td>
    <td><div align="center"></div></td>
    <td><span class="STYLE10"></span></td>
  </tr>
  <tr>
    <td><div align="right">核算价格：</div></td>
    <td><label></label>
      <table cellspacing="0" cellpadding="3" border="0">
        <tbody><tr>
          <td><input type="button" name="rtbtn" value="芝麻开门"></td>
        </tr>
        <tr>
          <td><a href="${basePath}hiking/toQuote2">链接</a></td>
        </tr>
      </tbody></table></td>
    <td><div align="center"></div></td>
    <td><span class="STYLE10">两种核算价格的方式，出来两个不同的页面</span></td>
  </tr>
  <tr>
    <td><div align="right"></div></td>
    <td>**线路在外面售卖的价格可能通过这套系统来评估<br>
      **可选儿童不占床，不含门票，不含车费。 </td>
    <td><div align="center"></div></td>
    <td><span class="STYLE10"></span></td>
  </tr>
  <tr>
    <td colspan="4"><p><a href="#" class="STYLE136">算价管理（门票在景点内管理）</a></p>    </td>
  </tr>
</tbody></table>
</div>
</form:form>
</body>
</html>

