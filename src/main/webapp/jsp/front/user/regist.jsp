<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢乐淘商城注册页面</title>

<link href="/bookStore/data-folder/front/css/user/style.css" rel="stylesheet" type="text/css" />
<link href="/bookStore/data-folder/front/css/user/drag.css" rel="stylesheet" type="text/css"/>

<script type="text/javascript" src="/bookStore/data-folder/front/js/jquery-1.7.2.js"></script>
<script type="text/javascript" src="/bookStore/data-folder/front/js/drag.js"></script>
<script type="text/javascript" src="/bookStore/data-folder/front/js/user/regist.js"></script>
<script src="http://dn-jsdelivr.qbox.me/jquery.cookie/1.4.1/jquery.cookie.min.js" type="text/javascript">

</script>

</head>
<body>
<div class="wrap">
	<div class="banner-show" id="js_ban_content">
		<div class="cell bns-01">
			<div class="con">
			</div>
		</div>
		<div class="cell bns-02" style="display:none;">
			<div class="con">
				<a href="javascript:void(0);" target="_blank" class="banner-link">
				<i>欢乐淘商城</i></a> </div>
		</div>
		<div class="cell bns-03" style="display:none;">
			<div class="con">
				<a href="javascript:void(0);" target="_blank" class="banner-link">
				<i>欢乐淘商城</i></a> </div>
		</div>
	</div>
	<div class="banner-control" id="js_ban_button_box">
		<a href="javascript:;" class="left">左</a>
		<a href="javascript:;" class="right">右</a>
	</div>

	<form id="registForm" onsubmit="return false" action="" method="post">
		<div class="container">
			<div class="register-box">
				<div class="reg-slogan">
					新用户注册
				</div>
				<div class="reg-logon">
					<a href="login.jsp">登录</a>
				</div>
				<div class="reg-form" id="js-form-mobile">
					<div class="cell">
						<input id="userName" type="text" placeholder="请输入用户名"  value="" name="userName" class="text inputClass" />
						<label class="errorClass" id="userNameError"></label>
					</div>
					<div class="cell">
						<input id="email" type="text" placeholder="请输入邮箱"  value="" name="email" class="text inputClass" />
						<label class="errorClass" id="emailError"></label>
					</div>
					<div id="ecode" class="cell vcode">
						<input type="text" placeholder="请输入邮箱验证码" name="emailCode" id="emailCode" class="text inputClass" maxlength="6" />
						<div class="divEmailCode">
							<input type="button" value="发送验证码" id="emailBtn" onclick="send()">
						</div>
						<label class="errorClass" id="emailCodeError"></label>
					</div>
					<div class="cell">
						<input id="userPassword" type="password" placeholder="请输入密码"  name="userPassword"  class="text inputClass" />
						<label class="errorClass" id="userPasswordError"></label>
					</div>
					<div class="cell">
						<input id="reUserPassword" type="password" placeholder="请确认密码"  name="reUserPassword" class="text inputClass" />
						<label class="errorClass" id="reUserPasswordError"></label>
					</div>
					
					<!-- !验证码 -->
					<div style="color:red">

					</div>
					<div id="vcode" class="cell vcode">
						<input type="text" placeholder="输入验证码" name="verifyCode" id="verifyCode" class="text inputClass" maxlength="6" />
						<div class="divVerifyCode">
							<img id="imgVerifyCode" src="${pageContext.request.contextPath}/verifyCode" onclick="javascript:_hyz('${pageContext.request.contextPath}')"/>
						</div> 
						<label class="errorClass" id="verifyCodeError">${errors.verifyCode}</label>
					</div>

					<div class="user-agreement" style="color:#BDBDBD;font-size: 14px">
						<input type="checkbox" id="js-mail_chk" checked="checked" />
						同意《欢乐淘商城用户服务协议》
					</div>
					<div class="bottom">
						<input id="submitBtn" type="image" class="button btn-green" value="立即注册" />
					</div>

				</div>
				
			</div>
		</div>
	</form>
</div>

<script type="text/javascript">
	$(document).ready(function() {
		FancyForm.setup();
	});
</script>

</body>
</html>
