<%@ page language="java" import="java.lang.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="/WEB-INF/views/server/resource.jsp"  %>
<!DOCTYPE html>
<html>
<head>
 <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
 <meta http-equiv="description" content="${rt.title }"> 
<title>${rt.title}</title>
</head>

<body>
<%@include file="/front/header.jsp"  %>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><img src="images/frame1-1.gif" width="100%" height="7" /></td>
  </tr>
  <tr>
    <td background="images/frame1-2.gif">
    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="685"><table width="1053" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="32"><img src="images/man.gif" width="32" height="32" /></td>
            <td width="1021"><span class="STYLE148"><span class="STYLE24">来自：</span>${bean.city }${bean.district } ${bean.customerName}  <span class="STYLE24">团号：</span>${qf.groupCode }  <span class="STYLE14">出团日期：</span>${qf.groupDate }<span class="STYLE14">人数：</span>${qf.adults }大${qf.children }小 </span></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><img src="images/frame1-3.gif" width="1140" height="7" /></td>
  </tr>
</table>
<table width="100%" border="0" align="center" cellpadding="10" cellspacing="0">
  <tr>
    <td class="h1-black">${rt.title}<span class="STYLE27"></span></td>
  </tr>
</table>
<br />
<br />
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><img src="images/frame1-1.gif" width="1140" height="7" /></td>
  </tr>
  <tr>
    <td background="images/frame1-2.gif"><table width="1100" border="0" align="center" cellpadding="10" cellspacing="0">
        <tr>
          <td width="761" valign="top" class="STYLE126"><span class="STYLE3">简要行程</span><span class="STYLE2">：</span></td>
        </tr>
      </table>
       ${qf.showTrip }
       </td>
  </tr>
  <tr>
    <td><img src="images/frame1-3.gif" width="100%" height="7" /></td>
  </tr>
</table>
<br />
<table width="100%" border="1" align="center" cellpadding="8" cellspacing="2">
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td colspan="2">成本</td>
    <td colspan="2">分项加价<br />
      <span class="STYLE148">加总价 分项加价 </span></td>
    <td><span class="STYLE10"></span></td>
  </tr>
  <tr>
    <td width="78"><strong>项目</strong></td>
    <td width="639"><div align="center"><strong>成本及计算</strong></div></td>
    <td width="39">大人</td>
    <td width="39"><div align="center">小孩</div></td>
    <td width="56">&nbsp;</td>
    <td width="56">&nbsp;</td>
    <td width="664"><div align="center" class="STYLE10"><strong>说明</strong></div></td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0"><div align="right"><strong>人数： </strong></div></td>
    <td><label>
          大人：${qf.adults }元/人 小孩：${qf.children }元/人（按小孩价格核算）</label></td>
    <td><input size="6" type="text" name="adults"  class="easyui-numberbox" data-options="min:0,max:100,validType:'number',precision:0,groupSeparator:',',width:151,height:22" onkeyup="(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this)" onblur="this.v();"/>位</td>
    <td><input size="6" type="text" name="children" class="easyui-numberbox" data-options="min:0,max:100,validType:'number',precision:0,groupSeparator:',',width:151,height:22" onkeyup="(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this)" onblur="this.v();"/>位</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><span class="STYLE10">。按前面 一页填写的数据 <br />
      。分项报价的内容</span></td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0"><p align="right"><strong>门票：</strong></p></td>
    <td><span class="STYLE126"> 1.</span>海子沟门票50元<br />
      <span class="STYLE126">2.</span>长坪沟户外门票150元<br />
      <span class="STYLE126">3.毕棚沟门票80元/人
观光车 70元/人</span></td>
    <td>350</td>
    <td>
      0</td>
    <td><span class="STYLE126">
      <input name="textfield32275" type="text" size="6" />
    </span></td>
    <td><span class="STYLE126">
      <input name="textfield32276" type="text" size="6" />
    </span></td>
    <td><span class="STYLE10">小孩 未勾选，则成本 为0 </span></td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0"><div align="right"><strong>旅行证件</strong></div></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><span class="STYLE126">
      <input name="textfield32277" type="text" size="6" />
    </span></td>
    <td><span class="STYLE126">
      <input name="textfield32278" type="text" size="6" />
    </span></td>
    <td><span class="STYLE10"></span></td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0"><div align="right"><strong>导游：</strong></div></td>
    <td><span class="STYLE126"> 全程中文导游 300元/天 *6天=1800元</span><br /></td>
    <td>450</td>
    <td>0</td>
    <td><span class="STYLE126">
      <input name="textfield32279" type="text" size="6" />
    </span></td>
    <td><span class="STYLE126">
      <input name="textfield322710" type="text" size="6" />
    </span></td>
    <td><span class="STYLE10">小孩未勾选，则把些项目平摊到大人1800/4人</span></td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0"><div align="right"><strong>酒店：<br />
    </strong></div></td>
    <td>1.贵山商务酒店 120元/间/夜 * 2夜 <br />
      2.露营 0元/间/夜 *2夜 <br />
      3.汶川大酒店 200元/间夜 * 1夜 <br />
      <br />
    <span class="STYLE10"></span></td>
    <td>220</td>
    <td>220</td>
    <td><span class="STYLE126">
      <input name="textfield322792" type="text" value="200" size="6" />
    </span></td>
    <td><span class="STYLE126">
      <input name="textfield322793" type="text" value="200" size="6" />
    </span></td>
    <td><span class="STYLE10">1间房按2人算<br />
      则为：（120*2+200*1）/2<br />
    小孩勾选了，所以有小孩 的成本 </span></td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0"><div align="right"><strong>用车：<br />
    </strong></div></td>
    <td><span class="STYLE126"> 1.
      全程用车</span> 1000元/天*6天=6000元 <br /></td>
    <td>1000</td>
    <td>1000</td>
    <td><span class="STYLE126">
      <input name="textfield32279" type="text" value="100" size="6" />
    </span></td>
    <td><span class="STYLE126">
      <input name="textfield322710" type="text" value="100" size="6" />
    </span></td>
    <td><span class="STYLE10">小孩勾选了，所以车价除以大人和小孩 的和<br />
      6000/(4+2)=1000</span></td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0"><div align="right"><strong>大交通：<br />
    </strong></div></td>
    <td><span class="STYLE126">
      <label></label>
    </span></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><span class="STYLE10">没填写则没有</span></td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0"><div align="right"><strong>用餐：<br />
              <br />
    </strong></div></td>
    <td><label>
      早餐酒店用<br />
      正餐 共11餐，40元餐标9餐，特色餐2餐（<span class="STYLE126">钦善斋药膳火锅 60元/人</span>、道地四川火锅80元/人）<br />
    </label>      </td>
    <td>500</td>
    <td>500</td>
    <td><span class="STYLE126">
      <input name="textfield32279" type="text" size="6" />
    </span></td>
    <td><span class="STYLE126">
      <input name="textfield322710" type="text" size="6" />
    </span></td>
    <td><span class="STYLE10">按填写和勾选的来<br />
      早餐默认酒店用<br />
      午餐和晚上按上面是11餐，其中2餐特色餐<br />
      填写了40元餐标，则为<br />
      （11餐-2餐特色）*40元+60+80=500<br />
      小孩 勾选了</span></td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0"><div align="right"><strong>保险：</strong></div></td>
    <td><span class="STYLE126">
      <label></label>
      </span><span class="STYLE126">内宾旅游意外保险 10元/人 </span></td>
    <td>10</td>
    <td>10</td>
    <td><span class="STYLE126">
      <input name="textfield32279" type="text" size="6" />
    </span></td>
    <td><span class="STYLE126">
      <input name="textfield322710" type="text" size="6" />
    </span></td>
    <td><span class="STYLE10"></span></td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0"><div align="right"><strong>综费</strong>：</div></td>
    <td><span class="STYLE126">旅行社综合服务费</span></td>
    <td>0</td>
    <td>0</td>
    <td><span class="STYLE126">
      <input name="textfield32279" type="text" value="500" size="6" />
    </span></td>
    <td><span class="STYLE126">
      <input name="textfield322710" type="text" value="300" size="6" />
    </span></td>
    <td><span class="STYLE10"></span></td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0"><div align="right"><strong>娱乐：</strong></div></td>
    <td>成都川剧表演 200元/人 </td>
    <td>10</td>
    <td>10</td>
    <td><span class="STYLE126">
      <input name="textfield32279" type="text" size="6" />
    </span></td>
    <td><span class="STYLE126">
      <input name="textfield322710" type="text" size="6" />
    </span></td>
    <td><span class="STYLE10"></span></td>
  </tr>
<!--  <tr>
    <td colspan="7"><div align="center"></div></td>
  </tr>
   <tr>
    <td bgcolor="#f0f0f0"><div align="right"><strong>向导</strong></div></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><span class="STYLE10"></span></td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0"><div align="right"><strong>驮马费</strong></div></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><span class="STYLE10"></span></td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0"><div align="right"><strong>骑马费</strong></div></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><span class="STYLE10"></span></td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0"><div align="right"><strong>登山注册费</strong></div></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><span class="STYLE10"></span></td>
  </tr> -->
  
  <tr>
    <td bgcolor="#f0f0f0"><div align="right"><strong>其它 </strong></div></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><span class="STYLE10"></span></td>
  </tr>
  <tr>
    <td><div align="right"></div></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><span class="STYLE10"></span></td>
  </tr>
  <tr>
    <td><div align="right">核算价格：</div></td>
    <td><label></label>
      <table border="0" cellspacing="0" cellpadding="3">
        <tr>
          <td><input type="button" onclick="javascript:go(-1)" name="Submit2" value="返回上页修改" /></td>
          <td><input type="submit" name="Submit22" value="算算呗 ：）" /></td>
        </tr>
        <tr>
          <td>链接1</td>
          <td><a href="${basePath}hiking/toQuote3">链接2</a></td>
        </tr>
      </table></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><span class="STYLE10">两种核算价格的方式，出来两个不同的页面</span></td>
  </tr>
  <tr>
    <td><div align="right"></div></td>
    <td>**线路在外面售卖的价格可能通过这套系统来评估<br />
      **可选儿童不占床，不含门票，不含车费。 </td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><span class="STYLE10"></span></td>
  </tr>
  <tr>
    <td colspan="7"><p><a href="#" class="STYLE136">算价管理（门票在景点内管理）</a></p>    </td>
  </tr>
</table>
<script type="text/javascript" src="${basePath}js/ux/front/selfdrive/quote_step2.js"></script>
<%@include file="/front/footer.jsp" %>
</body>
</html>
