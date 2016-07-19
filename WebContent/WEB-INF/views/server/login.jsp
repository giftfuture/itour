<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%    
String path = request.getContextPath();    
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";    
// 将 "项目路径basePath" 放入pageContext中，待以后用EL表达式读出。    
pageContext.setAttribute("basePath",basePath);    
%>
<!DOCTYPE html>
<html>
 <head>
 <base href=" <%=basePath%>">
 <meta http-equiv="pragma" content="no-cache">  
 <meta http-equiv="cache-control" content="no-cache">  
 <meta http-equiv="expires" content="0">      
 <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
 <meta http-equiv="description" content="This is my page"> 
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>itour后台登录</title>
 <!--  <link rel="shortcut icon" href="resources/fc/images/icon/favicon.ico"> -->
  <!--[if lt IE 9]>
   <script src="plug-in/login/js/html5.js"></script>
  <![endif]-->
  <!--[if lt IE 7]>
  <script src="plug-in/login/js/iepng.js" type="text/javascript"></script>
  <script type="text/javascript">
	EvPNG.fix('div, ul, img, li, input'); //EvPNG.fix('包含透明PNG图片的标签'); 多个标签之间用英文逗号隔开。
</script>
  <![endif]-->
  <link href="js/plug-in/login/css/zice.style.css" rel="stylesheet" type="text/css" />
  <link href="js/plug-in/login/css/buttons.css" rel="stylesheet" type="text/css" />
  <link href="js/plug-in/login/css/icon.css" rel="stylesheet" type="text/css" />
  <link rel="stylesheet" type="text/css" href="js/plug-in/login/css/tipsy.css" media="all" />
  <style type="text/css">
html {
	background-image: none;
}

label.iPhoneCheckLabelOn span {
	padding-left: 0px
}

#versionBar {
	background-color: #212121;
	position: fixed;
	width: 100%;
	height: 35px;
	bottom: 0;
	left: 0;
	text-align: center;
	line-height: 35px;
	z-index: 11;
	-webkit-box-shadow: black 0px 10px 10px -10px inset;
	-moz-box-shadow: black 0px 10px 10px -10px inset;
	box-shadow: black 0px 10px 10px -10px inset;
}

.copyright {
	text-align: center;
	font-size: 10px;
	color: #CCC;
}

.copyright a {
	color: #A31F1A;
	text-decoration: none
}

#login .logo {
	width: 500px;
	height: 51px;
}
</style>
 <jsp:include page="/WEB-INF/views/server/resource.jsp"></jsp:include>
<script type="text/javascript" src="js/jquery-2.1.1.js"></script>
<script type="text/javascript" src="js/plug-in/login/js/html5.js"></script>
<!-- <script type="text/javascript" src="js/plug-in/login/js/iepng.js"></script>  -->
<script type="text/javascript" src="js/plug-in/login/js/iphone.check.js"></script>
<script type="text/javascript" src="js/plug-in/login/js/jquery-jrumble.js"></script>
<script type="text/javascript" src="js/plug-in/login/js/jquery.tipsy.js"></script>
<script type="text/javascript" src="js/plug-in/login/js/login.js"></script>
 </head>
 <body>
  <div id="alertMessage"></div>
  <div id="successLogin"></div>
  <div class="text_success">
   <img src="js/plug-in/login/images/loader_green.gif" alt="Please wait" />
   <span>登陆成功!请稍后....</span>
  </div>
  <div id="login">
   <div class="ribbon" style="background-image:url(images/head2016.gif);"></div>
   <div class="inner">
    <div class="logo">
    	<span style=""><font face="微软雅黑">主角旅行后台管理</font></span>
     <!-- <img src="js/plug-in/login/images/toplogo.png"/> -->
    </div>
    <div class="formLogin"><!--  check="${basePath}main/checkuser" -->
     <form name="formLogin" id="formLogin" action="${basePath}main/logIn" method="post" check="${basePath}main/checkuser">
      <div class="tip">
       <input class="userName" name="email" type="text" id="email"  value='admin@qq.com' title="用户名" iscookie="true"  nullmsg="请输入用户名!"/>
      </div>
      <div class="tip">
       <input class="password" name="pwd" type="password"  value='admin' id="pwd" title="密码" nullmsg="请输入密码!"/>
      </div>
      <div class="tip">
      <input type="text" name="verifyCode"/><br/>
           <img alt="验证码看不清，换一张" src="${basePath}ImageServlet" id="validateCodeImg" onclick="changeImg()">
           &nbsp;&nbsp;<a href="javascript:void(0)" onclick="changeImg()">看不清，换一张</a>
      </div>
      <div class="loginButton">
       <div style="float: right; padding: 3px 0; margin-right: -12px;">
        <div>
         <ul class="uibutton-group">
          <li style="width:100px;height:80px;"><!-- onclick="javascript:forms['formLogin'].submit()" -->
         <!--  <input  id="but_login"  class="uibutton normal"  type="button" value="登录" onclick="login()"/> -->
          <a class="uibutton normal" href="javascript:void(0)" id="but_login">登录</a>
           </li>
          <li style="width:150px;height:80px;">
          <!--  <input  id="forgetpass"  class="uibutton normal"  type="button" value="忘记密码"/> -->
            <a class="uibutton normal modify-pwd-btn" href="javascript:void(0)" id="forgetpass">忘记密码</a> 
          </li>
         </ul>
        </div>
       </div>
       <div class="clear"></div>
      </div>
     </form>
    </div>
   </div>
   <div class="shadow"></div>
  </div>
  <!--Login div-->
  <div class="clear"></div>
  <div id="versionBar">
   <div class="copyright">
    &copy; 版权所有
    <span class="tip"><a href="http://www.itours.com.cn" title="主角旅行"></a> (推荐使用IE8+,谷歌浏览器可以获得更快,更安全的页面响应速度)技术支持:<a href="#" title="主角旅行">itours</a></span>
   </div>
  </div>
  <!-- Link JScript-->
  <script type="text/javascript" src="js/plug-in/jquery/jquery-1.8.3.min.js"></script>
  <script type="text/javascript" src="js/plug-in/jquery/jquery.cookie.js"></script>
  <script type="text/javascript" src="js/plug-in/login/js/jquery-jrumble.js"></script>
  <script type="text/javascript" src="js/plug-in/login/js/jquery.tipsy.js"></script>
  <script type="text/javascript" src="js/plug-in/login/js/iphone.check.js"></script>
  <script type="text/javascript" src="js/plug-in/login/js/login.js"></script>
 </body>
</html>