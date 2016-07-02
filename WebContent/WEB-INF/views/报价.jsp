<%@ page language="java" import="java.lang.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	isELIgnored="false"%>
<%    
String path = request.getContextPath();    
// 获得本项目的地址(例如: http://localhost:8080/MyApp/)赋值给basePath变量    
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";    
// 将 "项目路径basePath" 放入pageContext中，待以后用EL表达式读出。    
pageContext.setAttribute("basePath",basePath);    
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href=" <%=basePath%>">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}

.h1-black {
	font-family: "黑体";
	font-size: 36px;
	font-weight: bold;
	color: #333333;
}

.h1-2 {
	font-family: "黑体";
	font-size: 36px;
	color: #666666;
}

.f24 {
	font-size: 24px;
	line-height: 40px;
}

.h2-24 {
	font-family: "黑体";
	font-size: 24px;
}

.f12-gao1 {
	font-size: 12px;
	line-height: 20px;
	color: #333333;
}

.f14-gao1 {
	font-size: 14px;
	line-height: 30px;
	color: #333333;
}

.STYLE126 {
	font-size: 14px
}

.STYLE129 {
	color: #000000;
	font-weight: bold;
}

.STYLE140 {
	color: #666666
}

.STYLE148 {
	color: #990000
}

.STYLE2 {
	font-family: "黑体";
	font-size: 24px;
	color: #990000;
}

.STYLE3 {
	font-size: 16px;
	font-weight: bold;
	font-family: Arial, Helvetica, sans-serif;
	color: #990000;
}

.STYLE5 {
	font-size: 14px;
	font-weight: bold;
	color: #990000;
}

.STYLE7 {
	color: #990000;
	font-weight: bold;
}
-->
</style>
</head>

<body>
	<table width="200" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td><img src="images/top-menu.jpg" width="1350" height="153" /></td>
		</tr>
	</table>
	<table width="1100" border="0" align="center" cellpadding="0"
		cellspacing="0">
		<tr>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td class="h1-black">四川徒步+四姑娘山穿越7日</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
		</tr>
	</table>
	<table width="1100" border="0" align="center" cellpadding="0"
		cellspacing="0">
		<tr>
			<td width="614"><table width="600" border="0" cellpadding="0"
					cellspacing="0">
					<tr>
						<td width="600"><img src="images/Route001.jpg" width="600"
							height="338" /></td>
					</tr>
					<tr>
						<td height="69"><table width="600" border="0" align="center"
								cellpadding="0" cellspacing="0">
								<tr>
									<td><img src="images/arrow01-1.gif" width="20" height="40" /></td>
									<td><div align="center">
											<img src="images/Route001.jpg" width="100" height="55" />
										</div></td>
									<td><div align="center">
											<img src="images/Route001.jpg" width="100" height="55" />
										</div></td>
									<td><div align="center">
											<img src="images/Route001.jpg" width="100" height="55" />
										</div></td>
									<td><div align="center">
											<img src="images/Route001.jpg" width="100" height="55" />
										</div></td>
									<td><div align="center">
											<img src="images/Route001.jpg" width="100" height="55" />
										</div></td>
									<td><img src="images/arrow01-2.gif" width="20" height="40" /></td>
								</tr>
							</table></td>
					</tr>

				</table></td>
			<td width="486" valign="top"><div align="center">
					<span class="STYLE2">适合我吗？</span>
				</div>
				<table width="442" border="0" cellspacing="2" cellpadding="4">
					<tr>
						<td class="STYLE126"><div align="right">
								<strong>类型</strong>
							</div></td>
						<td class="STYLE126"><strong>观光摄影 </strong><a href="#">Explain&gt;&gt;</a></td>
					</tr>
					<tr>
						<td width="91" class="STYLE126"><div align="right">
								<strong>线路编号</strong>
							</div></td>
						<td width="337" class="STYLE126">sc0001</td>
					</tr>
					<tr>
						<td class="STYLE126"><div align="right">
								<strong>旅行天数</strong>
							</div></td>
						<td class="STYLE126">8天7夜</td>
					</tr>
					<tr>
						<td class="STYLE126"><div align="right">
								<strong>最高海拔</strong>
							</div></td>
						<td class="STYLE126">4800米</td>
					</tr>
					<tr>
						<td class="STYLE126"><div align="right">
								<strong>起始地</strong>
							</div></td>
						<td class="STYLE126">成都 <a href="#">Explain&gt;&gt;</a></td>
					</tr>
					<tr>
						<td class="STYLE126"><div align="right">
								<strong>完成地</strong>
							</div></td>
						<td class="STYLE126">成都</td>
					</tr>
					<tr>
						<td class="STYLE126"><div align="right">
								<strong>交通方式</strong>
							</div></td>
						<td class="STYLE126">飞机、汽车</td>
					</tr>
					<tr>
						<td class="STYLE126"><div align="right">
								<strong>徒步难度</strong>
							</div></td>
						<td class="STYLE126"><img src="images/shoe-1.gif" width="16"
							height="16" /> <img src="images/shoe-1.gif" width="16"
							height="16" /> <img src="images/shoe-1.gif" width="16"
							height="16" /> <img src="images/shoe-1.gif" width="16"
							height="16" /> <img src="images/shoe-2.gif" width="16"
							height="16" /> <a href="#">Explain&gt;&gt;</a></td>
					</tr>
					<tr>
						<td class="STYLE126"><div align="right">
								<strong>徒步距离 </strong>
							</div></td>
						<td class="STYLE126">25km</td>
					</tr>
					<tr>
						<td class="STYLE126"><div align="right">
								<strong>山峰类型</strong>
							</div></td>
						<td class="STYLE126">非技术型山峰 <a href="#">Explain&gt;&gt; </a></td>
					</tr>
				</table> <span class="STYLE148"><br /> 注：每个团的需求都不同，可根据您的假期重新调整设计行程。</span><br />
				<br /> <a href="#">Terms &amp; conditions</a> | <a href="#">How
					to Pay</a> | <a href="#">Send to friend</a> <a href="#">收藏</a></td>
		</tr>
	</table>
	<table width="1100" border="0" align="center" cellpadding="0"
		cellspacing="0">
		<tr>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td><table width="1050" border="0" cellspacing="0"
					cellpadding="0">
					<tr>
						<td width="761" valign="top" class="STYLE126"><span
							class="h2-24">设计理念：</span><br /> <br /> 。體驗同里、烏鎮、宏村慢生活，悠然自得<br />
							。欣賞自然美景黃山，素有“五嶽歸來不看山，黃山歸來不看嶽之稱”欣賞自然美景黃山，素有“五嶽歸來不看山，黃山歸來不看嶽之稱”<br />
							。個性定製小包團，自由自在 <br /> <br /> 【美景】<br /> 。体验最美四川<br /> 。九寨归不看水<br />
							<br /> 【美食】<br /> 。食中国，味在四川<br /> 。四川道地火锅<br /> 。乐山豆腐宴 <br />
							<br /></td>
						<td width="299" valign="top" class="STYLE126"><div
								align="center">
								旅游地图<br /> <img src="img-test/map-002.jpg" width="260"
									height="127" />
							</div></td>
					</tr>
				</table></td>
		</tr>
		<tr>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td><table width="1050" border="0" cellpadding="5"
					cellspacing="1">
					<tr>
						<td height="31" valign="middle" bgcolor="#F0F0F0" class="STYLE129"><div
								align="center">
								<strong><strong>天数</strong></strong>
							</div></td>
						<td valign="middle" bgcolor="#F0F0F0" class="STYLE129"><div
								align="center">
								<strong><strong>行程</strong></strong>
							</div></td>
						<td valign="middle" bgcolor="#F0F0F0" class="STYLE129"><div
								align="center">里程</div></td>
						<td valign="middle" bgcolor="#F0F0F0" class="STYLE129"><div
								align="center">景点</div></td>
						<td valign="middle" bgcolor="#F0F0F0" class="STYLE129"><div
								align="center">住宿</div></td>
					</tr>
					<tr>
						<td width="43" valign="middle" class="STYLE126"><div
								align="center">1</div></td>
						<td width="285" valign="middle" class="STYLE126">接机，－约80分钟--同里-约1小时-烏鎮</td>
						<td width="52" valign="middle" class="STYLE126"><div
								align="center">25km</div></td>
						<td width="513" valign="middle" class="STYLE126">烏鎮</td>
						<td width="114" valign="middle" class="STYLE126">烏鎮</td>
					</tr>
					<tr>
						<td valign="middle" class="STYLE126"><div align="center">2</div></td>
						<td valign="middle" class="STYLE126">烏鎮</td>
						<td valign="middle" class="STYLE126"><div align="center">125km</div></td>
						<td valign="middle" class="STYLE126">【烏鎮西柵景區】乘船遊覽【水鄉古鎮】【烏鎮西柵景區】乘船遊覽【水鄉古鎮】</td>
						<td valign="middle" class="STYLE126">烏鎮</td>
					</tr>
					<tr>
						<td valign="middle" class="STYLE126"><div align="center">3</div></td>
						<td valign="middle" class="STYLE126">烏鎮－杭州</td>
						<td valign="middle" class="STYLE126"><div align="center">205km</div></td>
						<td valign="middle" class="STYLE126">【西湖】【雷峰塔】</td>
						<td valign="middle" class="STYLE126">杭州</td>
					</tr>
					<tr>
						<td valign="middle" class="STYLE126"><div align="center">4</div></td>
						<td valign="middle" class="STYLE126">杭州－宏村</td>
						<td valign="middle" class="STYLE126"><div align="center">25km</div></td>
						<td valign="middle" class="STYLE126">【木坑竹海】、【塔川】</td>
						<td valign="middle" class="STYLE126">宏村</td>
					</tr>
					<tr>
						<td valign="middle" class="STYLE126"><div align="center">5</div></td>
						<td valign="middle" class="STYLE126">宏村－黃山景區</td>
						<td valign="middle" class="STYLE126"><div align="center">25km</div></td>
						<td valign="middle" class="STYLE126">【黃山】</td>
						<td valign="middle" class="STYLE126">黃山</td>
					</tr>
					<tr>
						<td valign="middle" class="STYLE126"><div align="center">6</div></td>
						<td valign="middle" class="STYLE126">黃山景區－黃山市</td>
						<td valign="middle" class="STYLE126"><div align="center">25km</div></td>
						<td valign="middle" class="STYLE126">【西海大峽穀】，屯溪老街</td>
						<td valign="middle" class="STYLE126">黃山市</td>
					</tr>
					<tr>
						<td valign="middle" class="STYLE126"><div align="center">7</div></td>
						<td valign="middle" class="STYLE126">黃山市/上海虹橋</td>
						<td valign="middle" class="STYLE126"><div align="center">25km</div></td>
						<td valign="middle" class="STYLE126">途中</td>
						<td valign="middle" class="STYLE126">&nbsp;</td>
					</tr>
				</table>
				<p>
					<span class="STYLE7">注：每个团的需求都不同，可根据您的假期重新调整设计行程。</span>
				</p></td>
		</tr>
		<tr>
			<td><table width="1050" border="0" cellspacing="6"
					cellpadding="0">
					<tr>
						<td width="601" valign="top"><span class="h2-24">报价：</span><br />
							<table width="541" border="0" cellspacing="0" cellpadding="5">
								<tr>
									<td width="84"><div align="right" class="STYLE126">4人：</div></td>
									<td width="457" class="STYLE126">淡季价400元/人，旺季价600元/人 起</td>
								</tr>
								<tr>
									<td><div align="right" class="STYLE126">6人：</div></td>
									<td class="STYLE126">淡季价400元/人，旺季价600元/人 起</td>
								</tr>
								<tr>
									<td><div align="right" class="STYLE126">10人以上：</div></td>
									<td class="STYLE126">淡季价400元/人，旺季价600元/人 起</td>
								</tr>
							</table> <span class="STYLE126"><br />
								以上是基于3星级酒店的经济出行的报价，其实可以根据您的要求来整理的。<br /> <br /> <br /> </span>
							<p>&nbsp;</p>
							<p class="STYLE126">★服務涉及各地往返拉薩機票，青藏鐵路火車票，各級酒店，中外文導游服務，越野車，商務車，大型
								客車等各種用車，景點門票，餐飲安排等，為您的出行提供全方位的服務保障。</p>
							<p>&nbsp;</p>
							<p>&nbsp;</p>
							<p>&nbsp;</p>
							<p>&nbsp;</p>
							<p>&nbsp;</p>
							<p></p> <br /> <br /></td>
						<td width="431" valign="top"><div align="center">
								<table width="303" border="0" cellpadding="0" cellspacing="1"
									bgcolor="#CCCCCC">
									<tr>
										<td height="30" colspan="2" bgcolor="#CCCCCC" class="STYLE140"><div
												align="center" class="STYLE3">快速询问</div>
											<div align="center"></div></td>
									</tr>
									<tr>
										<td width="51" bgcolor="#F0F0F0" class="STYLE140"><div
												align="right">
												<span class="STYLE126"><strong>*姓名</strong>:</span>
											</div></td>
										<td width="249" bgcolor="#F0F0F0" class="STYLE140"><span
											class="STYLE126"> <input type="text"
												name="textfield3222" /> <select name="select5" id="select">
													<option value="Mr">先生</option>
													<option value="Ms">女士</option>
											</select>
										</span></td>
									</tr>
									<tr>
										<td bgcolor="#F0F0F0" class="STYLE140"><div align="right">
												<span class="STYLE126"><strong>*电邮</strong>:</span>
											</div></td>
										<td bgcolor="#F0F0F0" class="STYLE140"><span
											class="STYLE126"> <input type="text"
												name="textfield24222" />
										</span></td>
									</tr>
									<tr>
										<td bgcolor="#F0F0F0" class="STYLE140"><div align="right">
												<strong>电话</strong>:
											</div></td>
										<td bgcolor="#F0F0F0" class="STYLE140"><span
											class="STYLE126"> <input type="text"
												name="textfield222222" />
										</span></td>
									</tr>
									<tr>
										<td bgcolor="#F0F0F0" class="STYLE140"><div align="right">
												<strong>内容</strong>:
											</div></td>
										<td bgcolor="#F0F0F0" class="STYLE140"><label> <textarea
													name="textarea" cols="30" rows="5"></textarea>
										</label></td>
									</tr>
									<tr>
										<td bgcolor="#F0F0F0" class="STYLE140">验证码</td>
										<td bgcolor="#F0F0F0" class="STYLE140"><span
											class="STYLE126"> <input name="textfield232222"
												type="text" size="8" /> Confirm Code:3052
										</span></td>
									</tr>
									<tr>
										<td bgcolor="#F0F0F0" class="STYLE140">&nbsp;</td>
										<td bgcolor="#F0F0F0" class="STYLE140"><input
											type="submit" name="Submit2222" value="Send" /></td>
									</tr>
								</table>
							</div></td>
					</tr>
				</table></td>
		</tr>
		<tr>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td><p>
					★衣：高原的陽光很美也易傷人，墨鏡帶沿的帽子防曬露等是必要的，帶件外套，陽光下的溫度和陰涼處都有很大的差別，隨時加衣；<br />
					★食：飲食和內地差別不大，各種菜系基本都有，有興趣還可以品嘗地道的藏餐以及印度尼泊爾等風味，個別景點需要我們為您準備路餐；<br />
					★住：酒店與內地別無二致，酒店配套設施略少一些，但客房和內地同樣舒適，星級酒店配備氧氣瓶等供氧設備；<br />
					★行：我們的常規觀光行程所達之處，路況都非常好一般都使用空調冷巴，旅途中，坐在舒適的座椅上，窗外全是風景。
				</p>
				<p>&nbsp;</p></td>
		</tr>
		<tr>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>详细日程：<br />
				<table width="1050" border="0" cellspacing="1" cellpadding="5">
					<tr>
						<td width="78"><span class="STYLE148"><strong>Day
									01 </strong></span></td>
						<td width="972"><span class="STYLE5">接机，－约80分钟--同里-约1小时-烏鎮</span><span
							class="STYLE148"><strong> 25km <span
									class="STYLE126">住 ：烏鎮</span></strong></span></td>
					</tr>
					<tr>
						<td valign="top">&nbsp;</td>
						<td valign="top"><span class="STYLE126">【烏鎮西柵景區】乘船遊覽【水鄉古鎮】【烏鎮西柵景區】乘船遊覽【水鄉古鎮】<br />
								<br />
						</span>
							<table width="300" border="0" cellspacing="1" cellpadding="5">
								<tr>
									<td><div align="center">
											<img src="images/Route001.jpg" width="271" height="152" />
										</div></td>
									<td><div align="center">
											<img src="images/Route001.jpg" width="271" height="152" />
										</div></td>
									<td><div align="center">
											<img src="images/Route001.jpg" width="271" height="152" />
										</div></td>
								</tr>
								<tr>
									<td class="STYLE126"><div align="center">四姑娘山景区</div></td>
									<td class="STYLE126"><div align="center">毕绷沟</div></td>
									<td class="STYLE126"><div align="center">哪个地方</div></td>
								</tr>
							</table></td>
					</tr>
				</table>
				<table width="1050" border="0" cellspacing="1" cellpadding="5">
					<tr>
						<td width="78"><span class="STYLE148"><strong>Day
									02 </strong></span></td>
						<td width="972"><span class="STYLE5">接机，－约80分钟--同里-约1小时-烏鎮</span><span
							class="STYLE148"><strong> 25km <span
									class="STYLE126">住 ：烏鎮</span></strong></span></td>
					</tr>
					<tr>
						<td valign="top">&nbsp;</td>
						<td valign="top"><span class="STYLE126">【烏鎮西柵景區】乘船遊覽【水鄉古鎮】【烏鎮西柵景區】乘船遊覽【水鄉古鎮】<br />
								<br />
						</span>
							<table width="300" border="0" cellspacing="1" cellpadding="5">
								<tr>
									<td><div align="center">
											<img src="images/Route001.jpg" width="271" height="152" />
										</div></td>
									<td><div align="center">
											<img src="images/Route001.jpg" width="271" height="152" />
										</div></td>
									<td><div align="center"></div></td>
								</tr>
								<tr>
									<td class="STYLE126"><div align="center">四姑娘山景区</div></td>
									<td class="STYLE126"><div align="center">毕绷沟</div></td>
									<td><div align="center"></div></td>
								</tr>
							</table></td>
					</tr>
				</table>
				<table width="1050" border="0" cellspacing="1" cellpadding="5">
					<tr>
						<td width="78"><span class="STYLE148"><strong>Day
									03 </strong></span></td>
						<td width="972"><span class="STYLE5">接机，－约80分钟--同里-约1小时-烏鎮</span><span
							class="STYLE148"><strong> 25km <span
									class="STYLE126">住 ：烏鎮</span></strong></span></td>
					</tr>
					<tr>
						<td valign="top">&nbsp;</td>
						<td valign="top"><span class="STYLE126">【烏鎮西柵景區】乘船遊覽【水鄉古鎮】【烏鎮西柵景區】乘船遊覽【水鄉古鎮】<br />
								<br />
						</span>
							<table width="300" border="0" cellspacing="1" cellpadding="5">
								<tr>
									<td><div align="center">
											<img src="images/Route001.jpg" width="271" height="152" />
										</div></td>
									<td><div align="center"></div></td>
									<td><div align="center"></div></td>
								</tr>
								<tr>
									<td class="STYLE126"><div align="center">四姑娘山景区</div></td>
									<td class="STYLE126"><div align="center"></div></td>
									<td class="STYLE126"><div align="center"></div></td>
								</tr>
							</table></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
		</tr>
	</table>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<table width="1050" border="0" cellpadding="5" cellspacing="1">
		<tr>
			<td valign="middle" bgcolor="#F0F0F0" class="STYLE129"><div
					align="center">
					<strong><strong>天数</strong></strong>
				</div></td>
			<td valign="middle" bgcolor="#F0F0F0" class="STYLE129"><div
					align="center">日期</div></td>
			<td height="31" valign="middle" bgcolor="#F0F0F0" class="STYLE129"><div
					align="center">星期</div></td>
			<td valign="middle" bgcolor="#F0F0F0" class="STYLE129"><div
					align="center">
					<strong><strong>行程</strong></strong>
				</div></td>
			<td valign="middle" bgcolor="#F0F0F0" class="STYLE129"><div
					align="center">里程</div></td>
			<td valign="middle" bgcolor="#F0F0F0" class="STYLE129"><div
					align="center">景点</div></td>
			<td valign="middle" bgcolor="#F0F0F0" class="STYLE129"><div
					align="center">用餐</div></td>
			<td valign="middle" bgcolor="#F0F0F0" class="STYLE129"><div
					align="center">住宿</div></td>
			<td valign="middle" bgcolor="#F0F0F0" class="STYLE129"><div
					align="center">酒店</div></td>
		</tr>
		<tr>
			<td width="34" valign="middle" class="STYLE126"><div
					align="center">1</div></td>
			<td width="59" valign="middle" class="STYLE126">2015-11-15</td>
			<td width="37" valign="middle" class="STYLE126">五</td>
			<td width="202" valign="middle" class="STYLE126">接机，－约80分钟--同里-约1小时-烏鎮</td>
			<td width="56" valign="middle" class="STYLE126"><div
					align="center">25km</div></td>
			<td width="306" valign="middle" class="STYLE126">烏鎮</td>
			<td width="50" valign="middle" class="STYLE126">/午晚</td>
			<td width="84" valign="middle" class="STYLE126">烏鎮</td>
			<td width="201" valign="middle" class="STYLE126">X酒店</td>
		</tr>
		<tr>
			<td valign="middle" class="STYLE126"><div align="center">2</div></td>
			<td valign="middle" class="STYLE126">2015-11-16</td>
			<td valign="middle" class="STYLE126">六</td>
			<td valign="middle" class="STYLE126">烏鎮</td>
			<td valign="middle" class="STYLE126"><div align="center">125km</div></td>
			<td valign="middle" class="STYLE126">【烏鎮西柵景區】乘船遊覽【水鄉古鎮】【烏鎮西柵景區】乘船遊覽【水鄉古鎮】</td>
			<td valign="middle" class="STYLE126">早午晚</td>
			<td valign="middle" class="STYLE126">烏鎮</td>
			<td valign="middle" class="STYLE126">X酒店</td>
		</tr>
		<tr>
			<td valign="middle" class="STYLE126"><div align="center">3</div></td>
			<td valign="middle" class="STYLE126">2015-11-17</td>
			<td valign="middle" class="STYLE126">日</td>
			<td valign="middle" class="STYLE126">烏鎮－杭州</td>
			<td valign="middle" class="STYLE126"><div align="center">205km</div></td>
			<td valign="middle" class="STYLE126">【西湖】【雷峰塔】</td>
			<td valign="middle" class="STYLE126">早午晚</td>
			<td valign="middle" class="STYLE126">杭州</td>
			<td valign="middle" class="STYLE126">天堂大酒店或同级<br />
				0836-98776786
			</td>
		</tr>
		<tr>
			<td valign="middle" class="STYLE126"><div align="center">4</div></td>
			<td valign="middle" class="STYLE126">2015-11-18</td>
			<td valign="middle" class="STYLE126">一</td>
			<td valign="middle" class="STYLE126">杭州－宏村</td>
			<td valign="middle" class="STYLE126"><div align="center">25km</div></td>
			<td valign="middle" class="STYLE126">【木坑竹海】、【塔川】</td>
			<td valign="middle" class="STYLE126">早午晚</td>
			<td valign="middle" class="STYLE126">宏村</td>
			<td valign="middle" class="STYLE126">民宅</td>
		</tr>
		<tr>
			<td valign="middle" class="STYLE126"><div align="center">5</div></td>
			<td valign="middle" class="STYLE126">2015-11-19</td>
			<td valign="middle" class="STYLE126">二</td>
			<td valign="middle" class="STYLE126">宏村－黃山景區</td>
			<td valign="middle" class="STYLE126"><div align="center">25km</div></td>
			<td valign="middle" class="STYLE126">【黃山】</td>
			<td valign="middle" class="STYLE126">早午晚</td>
			<td valign="middle" class="STYLE126">黃山</td>
			<td valign="middle" class="STYLE126">山顶</td>
		</tr>
		<tr>
			<td valign="middle" class="STYLE126"><div align="center">6</div></td>
			<td valign="middle" class="STYLE126">2015-11-20</td>
			<td valign="middle" class="STYLE126">三</td>
			<td valign="middle" class="STYLE126">黃山景區－黃山市</td>
			<td valign="middle" class="STYLE126"><div align="center">25km</div></td>
			<td valign="middle" class="STYLE126">【西海大峽穀】，屯溪老街</td>
			<td valign="middle" class="STYLE126">早午晚</td>
			<td valign="middle" class="STYLE126">黃山市</td>
			<td valign="middle" class="STYLE126">露营</td>
		</tr>
		<tr>
			<td valign="middle" class="STYLE126"><div align="center">7</div></td>
			<td valign="middle" class="STYLE126">2015-11-21</td>
			<td valign="middle" class="STYLE126">四</td>
			<td valign="middle" class="STYLE126">黃山市/上海虹橋</td>
			<td valign="middle" class="STYLE126"><div align="center">25km</div></td>
			<td valign="middle" class="STYLE126">途中</td>
			<td valign="middle" class="STYLE126">&nbsp;</td>
			<td valign="middle" class="STYLE126">&nbsp;</td>
			<td valign="middle" class="STYLE126">&nbsp;</td>
		</tr>
	</table>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<table width="900" border="0" align="center" cellpadding="0"
		cellspacing="0" class="lefttxt">
		<tr>
			<td height="105" valign="top" bgcolor="#666666"><strong>;lkajsdflladsf;</strong>
				<table width="883" height="60" border="0" align="center"
					cellpadding="0" cellspacing="0">
					<tbody>
						<tr>
							<td width="883" height="30" bgcolor="#EFEFEF"><div
									align="center">www.EasyChinaTravel.com</div></td>
						</tr>
						<tr>
							<td height="30" bgcolor="#EFEFEF"><div align="center">
									Add: Huaqiao Building, #15 South Three Sections of Yihuan Road,
									Chengdu, Sichuan, China<br /> Tel: +86-28-85580038 / 85562905?<br />
									E-mail: olivierwagemans@hotmail.com
								</div></td>
						</tr>
					</tbody>
				</table></td>
		</tr>
		<tr>
			<td width="611" valign="top" bgcolor="#666666"><strong><br />
			</strong></td>
		</tr>
		<tr>
			<td valign="top">&nbsp;</td>
		</tr>
	</table>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
</body>
</html>
