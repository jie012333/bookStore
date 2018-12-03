package cn.jie.bookstore.user.controller;

import cn.jie.bookstore.user.pojo.User;
import cn.jie.bookstore.user.service.UserService;
import cn.jie.bookstore.utils.result.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @ClassName: UserController
 * @Description: TODO
 * @Author: jie
 * @Date: 2018/11/24 11:00
 * @Version: 1.0
 */
@Controller
public class UserController{

    @Autowired
    private UserService userService;

    @Autowired
    private User u;

    /**
    * @Author: jie
    * @Description: 校验用户名是否已注册
    * @Date: 2018/11/24 14:04
    * @Param: [user]
    * @return: java.lang.Object
    **/
    @ResponseBody
    @RequestMapping("/validateUserName")
    public Object validateUserName(User user){

        if (user.getUserName() == null){
            return Result.error("用户名不能为空！");
        }
       if(userService.validateUserByInfo(user)){
            return Result.success("用户名可以注册！");
        }
        return Result.error("用户名已被注册！");
    }

    /**
    * @Author: jie
    * @Description: 校验email是否已注册
    * @Date: 2018/11/24 15:32
    * @Param: [user]
    * @return: java.lang.Object
    **/
    @ResponseBody
    @RequestMapping("/validateEmail")
    public Object validateEmail(User user){
        if (user.getEmail() == null){
            return Result.error("email不能为空！");
        }
        if (userService.validateUserByInfo(user)){
            return Result.success("email可以注册！");
        }
        return Result.error("email已被注册！");
    }

    /**
    * @Author: jie
    * @Description: 验证码校验
    * @Date: 2018/11/24 15:35
    * @Param: [code]
    * @return: java.lang.Object
    **/
    @ResponseBody
    @RequestMapping("/validateVerifyCode")
    public Object validateVerifyCode(String verifyCode, HttpServletRequest request){
        if (verifyCode == null){
            return Result.error("验证码不能为空！");
        }
        //获取session中的验证码
        String vCode = (String) request.getSession().getAttribute("vCode");
        //判断验证码是否正确
        if(verifyCode.equalsIgnoreCase(vCode)){
            return Result.success("验证码正确！");
        }
        return Result.error("验证码错误！");
    }

    /**
    * @Author: jie
    * @Description: 用户登录
    * @Date: 2018/11/24 20:19
    * @Param: [user,request]
    * @return: java.lang.Object
    **/
    @ResponseBody
    @RequestMapping("/login")
    public Object login(User user, HttpServletRequest request, HttpServletResponse response){

        Result result = userService.login(user,request,response);
        /*注册成功！*/
        if (result.getCode().equals("200")){
            return result.addUrl(request.getContextPath()+"/jsp/front/index.jsp");
        }
        /*注册失败！*/
        return result;
    }

    /**
    * @Author: jie
    * @Description: 用户注册
    * @Date: 2018/11/24 19:50
    * @Param: [user, request]
    * @return: java.lang.Object
    **/
    @ResponseBody
    @RequestMapping("/register")
    public Object register(User user,HttpServletRequest request, HttpServletResponse response){
        Result result = userService.addUser(user,request,response);
        /*注册成功！*/
        if (result.getCode().equals("200")){
            return Result.success("注册成功！").addData("message","<meta http-equiv='refresh' content='3;"+request.getContextPath()+"/jsp/front/index.jsp'>" +
                    "恭喜您！，登陆成功，本浏览器将在3秒后，跳转到首页，如果没有跳，请点击<a href='"+request.getContextPath()+"/jsp/front/index.jsp'>超链接</a>");
        }
        /*注册失败！*/
        return result;
    }

    /**
    * @Author: jie
    * @Description:
    * @Date: 2018/11/26 18:59
    * @Param: [request]
    * @return: cn.jie.bookstore.utils.result.Result
    **/
    @ResponseBody
    @RequestMapping("/quitUser")
    public Result quitUser(HttpServletRequest request){
        request.getSession().removeAttribute("user");
        return Result.success("注销成功！");
    }

    /**
    * @Author: jie
    * @Description: 查找session中的用户信息
    * @Date: 2018/11/26 18:51
    * @Param: []
    * @return: cn.jie.bookstore.utils.result.Result
    **/
    @ResponseBody
    @RequestMapping("/userInfo")
    public Result userInfo(HttpServletRequest request){
        Cookie[] cookies = request.getCookies();
        String sessionId = null;
        /*获取用来保存用户信息的sessionId*/
        for (Cookie ck:cookies){
            if (ck.getName().equals("bookStoreUserInfo")){
                sessionId = ck.getValue();
            }
        }

        if (sessionId == null){
            return Result.error("您还未登录！1");
        }
        User user = (User) request.getSession().getAttribute("user");
        if (user == null){
            return Result.error("您还未登录！2");
        }

        return Result.success("登录状态！").addData("userName",user.getUserName());
    }

    /**
    * @Author: jie
    * @Description: 发送邮箱验证码
    * @Date: 2018/11/25 11:10
    * @Param: [email,request]
    * @return: java.lang.Object
    **/
    @ResponseBody
    @RequestMapping("/emailValidation")
    public Object emailValidation(String email,HttpServletRequest request){
        Result result = userService.emailValidation(email,request);
        return result;
    }






    @ResponseBody
    @RequestMapping("/abc")
    public Object abc(String email,HttpServletRequest request){
        Result result = Result.success("123");
        if (result.getCode().equals(200)){
            System.out.println("=======================123");
            System.out.println(result.getCode());
            return result;
        }
        System.out.println(result.getCode());
        return result;
    }

}
