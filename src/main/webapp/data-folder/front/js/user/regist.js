$(function() {

	/*1. 得到所有的错误信息，循环遍历之。调用一个方法来确定是否显示错误信息！ */
	$(".errorClass").each(function() {
		showError($(this));//遍历每个元素，使用每个元素来调用showError方法
	});
	
	/* 2. 切换注册按钮的图片*/
	$("#submitBtn").hover(
		function() {
			/*$("#submitBtn").attr("src", "/bookStore/images/regist2.jpg");*/
		},
		function() {
			/*$("#submitBtn").attr("src", "/bookStore/images/regist1.jpg");*/
		}
	);
	
	/*3. 输入框得到焦点隐藏错误信息*/
	$(".inputClass").focus(function() {
		var labelId = $(this).attr("id") + "Error";//通过输入框找到对应的label的id
		$("#" + labelId).text("");//把label的内容清空！
		showError($("#" + labelId));//隐藏没有信息的label
	});
	
	/*4. 输入框失去焦点进行校验 */
	$(".inputClass").blur(function() {
		var id = $(this).attr("id");//获取当前输入框的id
		var funName = "validate" + id.substring(0,1).toUpperCase() + id.substring(1) + "()";//得到对应的校验函数名
		eval(funName);//执行函数调用
	});
	
	/* 5. 表单提交时进行校验 */
	$("#registForm").submit(function() {
		var bool = true;//表示校验通过
        if(!validateUserName()) {bool = false; }
		if(!validateEmail()) {bool = false;}
        if (!validateEmailCode) {bool = false;}
		if(!validateUserPassword()) {bool = false;}
		if(!validateReUserPassword()) {bool = false;}
		if(!validateVerifyCode()) {bool = false;}
        /*if(!validatePhone()) {bool = false;}*/

        if(bool){
        	$.ajax({
				url:"/bookStore/register",
				type:"POST",
				dataType:"json",
				async:false,
				cache:false,
				data:{
					"userName":$("#userName").val(),
                    "email":$("#email").val(),
                    "emailCode":$("#emailCode").val(),
                    "userPassword":$("#userPassword").val(),
                    "reUserPassword":$("#reUserPassword").val(),
					"verifyCode":$("#verifyCode").val()
				},
				success:function (result) {
				    console.log(result);
					if (result.code == 200){
                        window.location.href= "/bookStore/jsp/front/message.jsp?message="+result.data.message;
					} else{
                        $.each(result.data.errors,function(index,item){
                            $("#" + index + "Error").text(item);
                            showError($("#" + index + "Error"));
                        })
                    }
                },
                error:function (result) {
                    console.log(result);
                }
			})
		}
	});
});

/*登录名校验方法*/
function validateUserName() {
	var id = "userName";
	var value = $("#" + id).val();//获取输入框内容
	/* 1. 非空校验*/
	if(!value) {
        /*获取对应的label,,添加错误信息,,显示label*/
		$("#" + id + "Error").text("用户名不能为空！");
		showError($("#" + id + "Error"));
		return false;
	}
	/*2. 长度校验*/
	if(value.length < 3 || value.length > 20) {
        /*获取对应的label,,添加错误信息,,显示label*/
		$("#" + id + "Error").text("用户名长度必须在3 ~ 20之间！");
		showError($("#" + id + "Error"));
		return false;
	}
	/*3. 是否注册校验*/
	var b = true;
	$.ajax({
		url:"/bookStore/validateUserName",//要请求的servlet
		data:{userName:value},//给服务器的参数
		type:"POST",
		dataType:"json",
		async:false,//是否异步请求，如果是异步，那么不会等服务器返回，我们这个函数就向下运行了。
		cache:false,
		success:function(result) {
            console.log(result);
			if(result.code == 400) {//如果校验失败
				$("#" + id + "Error").text(result.msg);
				showError($("#" + id + "Error"));
				b = false;
			}
		}
	});
	return b;
}

/*
 * 登录密码校验方法
 */
function validateUserPassword() {
	var id = "userPassword";
	var value = $("#" + id).val();//获取输入框内容
	/*1. 非空校验*/
	if(!value) {
        /*获取对应的label,,添加错误信息,,显示label*/
		$("#" + id + "Error").text("密码不能为空！");
		showError($("#" + id + "Error"));
		return false;
	}
	/*2. 长度校验*/
	if(value.length < 6 || value.length > 20) {
        /*获取对应的label,,添加错误信息,,显示label*/
		$("#" + id + "Error").text("密码长度必须在6 ~ 20之间！");
		showError($("#" + id + "Error"));
		return false;
	}
	return true;	
}

/*确认密码校验方法*/
function validateReUserPassword() {
	var id = "reUserPassword";
	var value = $("#" + id).val();//获取输入框内容
	/*1. 非空校验 */
	if(!value) {
        /*获取对应的label,,添加错误信息,,显示label*/
		$("#" + id + "Error").text("确认密码不能为空！");
		showError($("#" + id + "Error"));
		return false;
	}
	/* 2. 两次输入是否一致校验*/
	if(value != $("#userPassword").val()) {
        /*获取对应的label,,添加错误信息,,显示label*/
		$("#" + id + "Error").text("两次输入不一致！");
		showError($("#" + id + "Error"));
		return false;
	}
	return true;	
}

/*Email校验方法*/
function validateEmail() {
	var id = "email";
	var value = $("#" + id).val();//获取输入框内容
	/*1. 非空校验*/
	if(!value) {
        /*获取对应的label,,添加错误信息,,显示label*/
		$("#" + id + "Error").text("Email不能为空！");
		showError($("#" + id + "Error"));
		return false;
	}
	/*2. Email格式校验 */
	if(!/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/.test(value)) {
        /*获取对应的label,,添加错误信息,,显示label*/
		$("#" + id + "Error").text("错误的Email格式！");
		showError($("#" + id + "Error"));
		return false;
	}
	/*3. 是否注册校验*/
	var b = true;
	$.ajax({
		url:"/bookStore/validateEmail",//要请求的servlet
		data:{email:value},//给服务器的参数
		type:"POST",
		dataType:"json",
		async:false,//是否异步请求，如果是异步，那么不会等服务器返回，我们这个函数就向下运行了。
		cache:false,
		success:function(result) {
			if(result.code == 400) {//如果校验失败
				$("#" + id + "Error").text(result.msg);
				showError($("#" + id + "Error"));
				b = false;
			}
		}
	});
	return b;
}

/* 邮箱验证码校验方法*/
function validateEmailCode() {
    var id = "emailCode";
    var value = $("#" + id).val();//获取输入框内容
    /*1. 非空校验*/
    if(!value) {
        /*获取对应的label,,添加错误信息,,显示label*/
        $("#" + id + "Error").text("邮箱验证码不能为空！");
        showError($("#" + id + "Error"));
        return false;
    }
    /*2. 长度校验*/
    if(value.length != 6) {
        /*获取对应的label,,添加错误信息,,显示label*/
        $("#" + id + "Error").text("错误的邮箱验证码！");
        showError($("#" + id + "Error"));
        return false;
    }
    return true;
}



/*验证码校验方法*/
function validateVerifyCode() {
	var id = "verifyCode";
	var value = $("#" + id).val();//获取输入框内容
	/*1. 非空校验 */
	if(!value) {
        /*获取对应的label,,添加错误信息,,显示label*/
		$("#" + id + "Error").text("验证码不能为空！");
		showError($("#" + id + "Error"));
		return false;
	}
	/*2. 长度校验 */
	if(value.length != 4) {
        /*获取对应的label,,添加错误信息,,显示label*/
		$("#" + id + "Error").text("错误的验证码！");
		showError($("#" + id + "Error"));
		return false;
	}
	/*3. 是否正确*/
	var b = true;
	$.ajax({
		url:"/bookStore/validateVerifyCode",//要请求的servlet
		data:{verifyCode:value},//给服务器的参数
		type:"POST",
		dataType:"json",
		async:false,//是否异步请求，如果是异步，那么不会等服务器返回，我们这个函数就向下运行了。
		cache:false,
		success:function(result) {
			if(result.code == 400) {//如果校验失败
				$("#" + id + "Error").text(result.msg);
				showError($("#" + id + "Error"));
				b = false
			}
		}
	});
	return b;
}

/*
 * 判断当前元素是否存在内容，如果存在显示，不页面不显示！
 */
function showError(ele) {
	var text = ele.text();//获取元素的内容
	if(!text) {//如果没有内容
		ele.css("display", "none");//隐藏元素
	} else {//如果有内容
		ele.css("display", "");//显示元素
	}
}

/*换一张验证码*/
function _hyz(path) {
    /*获取对应的label,,添加错误信息,,显示label*/
	$("#imgVerifyCode").attr("src", path + "/verifyCode?a=" + new Date().getTime());
}
/*==================================*/
/*==================================*/
;(function(){

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

})();

function submitForm(){
    $("#registForm").submit();
}

var countdown = 60;
var sending = false;

$(function () {
    countdown = $.cookie('validateCodeCountdown');

    if (countdown>0) {
        sending = true;
        var obj = $("#emailBtn");
        obj.attr("disabled", true);
        obj.val("重新发送(" + countdown + ")");
        settime(obj);
    }

    $(window).on('beforeunload unload', function () {
        if (sending) {
            console.log(countdown);
            $.cookie('validateCodeCountdown', countdown);
        }
        if (!sending) {
            console.log(countdown);
            $.cookie('validateCodeCountdown', 0);
        }
    });
});


function send() {
     if (validateEmail()){
         sending = true;
         var obj = $("#emailBtn");
         settime(obj);

         /*发送邮箱验证码*/
         $.ajax({
             url:"/bookStore/emailValidation",
             type:"POST",
             dataType:"json",
             async:true,
             cache:false,
             data:{
                 "email":$("#email").val()
             },
             success:function (result) {
                 if (result.code == 400){
                     console.log(result);
                 }
             },
			 error:function (result) {
             	 alert("500");
				 console.log(result);
             }
         })
     }
}
function settime(obj) { //发送验证码倒计时
    if (countdown == 0) {
        obj.attr('disabled', false);
        obj.val("发送验证码");
        countdown = 60;
        sending = false;
        return;
    } else {
        obj.attr('disabled', true);
        obj.val("重新发送(" + countdown + ")");
        countdown--;
    }
    setTimeout(function () {
        settime(obj);
    }, 1000)
}
