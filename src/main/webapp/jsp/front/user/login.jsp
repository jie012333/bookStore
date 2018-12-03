<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html"; charset="utf-8" />
<title>用户登录</title>

<link href="${request.contextPath}/data-folder/front/css/user/style.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/data-folder/front/css/user/login.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/data-folder/front/js/jquery-1.7.2.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/data-folder/front/js/user/login.js"></script>

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
				<i>圈子</i></a> </div>
		</div>
		<div class="cell bns-03" style="display:none;">
			<div class="con">
				<a href="javascript:void(0);" target="_blank" class="banner-link">
				<i>企业云</i></a> </div>
		</div>
	</div>
	<div class="banner-control" id="js_ban_button_box">
		<a href="javascript:;" class="left">左</a>
		<a href="javascript:;" class="right">右</a>
	</div>
<script type="text/javascript">
/*$(function(){
	
	var defaultInd = 0;
	var list = $('#js_ban_content').children();
	var count = 0;
	var change = function(newInd, callback){
		if(count) return;
		count = 2;
		$(list[defaultInd]).fadeOut(400, function(){
			count--;
			if(count <= 0){
				if(start.timer) window.clearTimeout(start.timer);
				callback && callback();
			}
		});
		$(list[newInd]).fadeIn(400, function(){
			defaultInd = newInd;
			count--;
			if(count <= 0){
				if(start.timer) window.clearTimeout(start.timer);
				callback && callback();
			}
		});
	}
	
	var next = function(callback){
		var newInd = defaultInd + 1;
		if(newInd >= list.length){
			newInd = 0;
		}
		change(newInd, callback);
	}
	
	var start = function(){
		if(start.timer) window.clearTimeout(start.timer);
		start.timer = window.setTimeout(function(){
			next(function(){
				start();
			});
		}, 8000);
	}
	
	start();
	
	$('#js_ban_button_box').on('click', 'a', function(){
		var btn = $(this);
		if(btn.hasClass('right')){
			//next
			next(function(){
				start();
			});
		}
		else{
			//prev
			var newInd = defaultInd - 1;
			if(newInd < 0){
				newInd = list.length - 1;
			}
			change(newInd, function(){
				start();
			});
		}
		return false;
	});
	
});

/*function submitForm(){
	$("#loginForm").submit();
}*/

</script>

	<form id="loginForm" onsubmit="return false" action="" method="post">
		<div class="container">
			<div class="register-box" style="top:-480px;height:350px">
				<div class="reg-slogan">
					用户登录</div>
				<div style="color:red;padding-left:35px">
					${loginInfo }
				</div>
				<div class="reg-form" id="js-form-mobile">
					<label id="msg" style="color:red;"></label>
					<div class="cell">
						<input type="text" placeholder="请输入用户名" name="userName" id="userName" class="text inputClass" maxlength="11" />
						<label id="userNameError" class="errorClass">${errors.userName }</label>
					</div>
					<div class="cell">
						<input type="password" placeholder="请输入密码"  name="userPassword" id="userPassword" class="text inputClass" />
						<label id="userPasswordError" class="errorClass">${errors.userPassword }</label>
					</div>
					
					<div class="user-agreement" style="color:#BDBDBD;font-size: 14px">
						<input type="checkbox" id="js-mail_chk" checked="checked" />
						记住用户名
					</div>
					
					<div class="bottom" >
						<%--<a href="javascript:;" class="button btn-green">用户登录</a>--%>
						<input id="js-mobile_btn submit" type="image" class="button btn-green" value="用户登录" />
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
