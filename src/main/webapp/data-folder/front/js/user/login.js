$(function() {
	
	/*2. 给注册按钮添加submit()事件，完成表单校验*/
	$("#loginForm").submit(function(){
		$("#msg").text("");
		var bool = true;
		$(".input").each(function() {
			var inputName = $(this).attr("name");
			if(!invokeValidateFunction(inputName)) {
				bool = false;
			}
		});
		$.ajax({
			url:"/bookStore/login",
			type:"POST",
			dataType:"json",
			async:false,
			cache:false,
			data:{
				"userName":$("#userName").val(),
				"userPassword":$("#userPassword").val()
			},
			success:function (result) {
				console.log(result);
                if (result.code == 200){
                    window.location.href= result.url;
                } else{
                    console.log(result);
					$("#msg").text(result.msg);
					showError($("msg"));
                }
            }
		})
	});
	
	/*3. 输入框得到焦点时隐藏错误信息*/
	$(".inputClass").focus(function() {
		var inputName = $(this).attr("name");
		$("#" + inputName + "Error").css("display", "none");
	});
	
	/* 4. 输入框失去焦点时进行校验*/
	$(".inputClass").blur(function() {
		var inputName = $(this).attr("name");
		invokeValidateFunction(inputName);
	})
});

/*
 * 输入input名称，调用对应的validate方法。
 * 例如input名称为：loginname，那么调用validateLoginname()方法。
 */
function invokeValidateFunction(inputName) {
	inputName = inputName.substring(0, 1).toUpperCase() + inputName.substring(1);
	var functionName = "validate" + inputName;
	return eval(functionName + "()");	
}

/*
 * 校验登录名
 */
function validateUserName() {
	var bool = true;
	$("#userNameError").css("display", "none");
	var value = $("#userName").val();
	if(!value) {// 非空校验
		$("#userNameError").css("display", "");
		$("#userNameError").text("用户名不能为空！");
		bool = false;
	} else if(value.length < 3 || value.length > 20) {//长度校验
		$("#userNameError").css("display", "");
		$("#userNameError").text("用户名长度必须在3 ~ 20之间！");
		bool = false;
	}
	return bool;
}

/*
 * 校验密码
 */
function validateUserPassword() {
	var bool = true;
	$("#userPasswordError").css("display", "none");
	var value = $("#userPassword").val();
	if(!value) {// 非空校验
		$("#userPasswordError").css("display", "");
		$("#userPasswordError").text("密码不能为空！");
		bool = false;
	} else if(value.length < 6 || value.length > 20) {//长度校验
		$("#userPasswordError").css("display", "");
		$("#userPasswordError").text("密码长度必须在6 ~ 20之间！");
		bool = false;
	}
	return bool;
}

