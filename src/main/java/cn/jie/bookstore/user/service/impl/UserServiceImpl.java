package cn.jie.bookstore.user.service.impl;

import cn.jie.bookstore.user.mapper.UserMapper;
import cn.jie.bookstore.user.pojo.User;
import cn.jie.bookstore.user.service.UserService;
import cn.jie.bookstore.utils.result.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.*;

/**
 * @ClassName: UserServiceImpl
 * @Description: TODO
 * @Author: jie
 * @Date: 2018/11/24 10:45
 * @Version: 1.0
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private JavaMailSender javaMailSender;

    @Autowired
    private User u;

    @Autowired
    private Result result;

    @Override
    public boolean validateUserByInfo(User user) {
        return userMapper.findInfo(user) == null;
    }



    @Override
    public User findUserByCode(User user) {
        return userMapper.findInfo(user);
    }

    @Override
    public Result emailValidation(String email, HttpServletRequest request) {
        /*生成随机的6个数字字符串*/
        Random random = new Random();
        String str = "0123456789";
        StringBuffer emailCode = new StringBuffer();
        for (int i=0; i<6; i++){
            int index = random.nextInt(str.length());
            emailCode.append(index);
        }
        request.getSession().setAttribute("emailCode", emailCode);/*存到session中，为校验做准备*/

        MimeMessage mMessage=javaMailSender.createMimeMessage();/*创建邮件对象*/
        MimeMessageHelper mMessageHelper;
        Properties prop = new Properties();
        String from;

        try {
            /*从配置文件中拿到发件人邮箱地址*/
            prop.load(this.getClass().getResourceAsStream("/mail.properties"));
            from = prop.get("mail.smtp.username")+"";
            mMessage.addRecipients(MimeMessage.RecipientType.CC,from);
            mMessageHelper=new MimeMessageHelper(mMessage,true);
            mMessageHelper.setFrom(from);/*发件人邮箱*/
            mMessageHelper.setTo(email);/*收件人邮箱*/
            mMessageHelper.setCc(from);
            mMessageHelper.setSubject("【仰恩大学图书商城】激活校验码！");/*邮件的主题*/
            mMessageHelper.setText("【欢乐淘图书商城】注册验证码是：<a>" + emailCode +
                    "</a>  ,用于注册欢乐淘图书商城账户，请尽快提交您的验证码。为保证信息安全，切勿将验证码告知他人！",true);

            /*mMessageHelper.setText("<p>重要文件</p><br/>",true);*///邮件的文本内容，true表示文本以html格式打开
            /* File file=new File("F:/img/枫叶.png");*///在邮件中添加一张图片
            /*FileSystemResource resource=new FileSystemResource(file);*/
           /* mMessageHelper.addInline("fengye", resource);//这里指定一个id,在上面引用
            mMessageHelper.addAttachment("枫叶.png", resource);//在邮件中添加一个附件*/
            javaMailSender.send(mMessage);/*发送邮件*/
        } catch (MessagingException e) {
            e.printStackTrace();
            return Result.error("验证码发送失败！");
        } catch (IOException e) {
            e.printStackTrace();
            return Result.error("验证码发送失败！");
        }
        return Result.success("验证码发送成功！");
    }

    @Override
    public Result login(User user, HttpServletRequest request, HttpServletResponse response) {

        /*表单校验*/
        Map<String,String> errors = validateLogin(user);
        if (errors.size() > 0){
            return Result.error("登录失败！").addData("errors",errors);
        }
        /*数据库校验*/
        if (userMapper.findInfo(user) == null){
            return Result.error("用户名或密码错误！");
        }

        /*保存登录状态*/
        HttpSession session = request.getSession();
        session.setAttribute("user",user);
        Cookie cookie = new Cookie("bookStoreUserInfo", session.getId());
        cookie.setMaxAge(24*60*60);
        cookie.setPath("/");
        response.addCookie(cookie);

        return Result.success("登录成功！");
    }

    @Override
    public Result addUser(User user, HttpServletRequest request,HttpServletResponse response) {
        Map<String,String> errors = validateRegister(user,request.getSession());
        if(errors.size() > 0){
            return Result.error("注册失败！").addData("errors",errors);
        }

        /*校验成功，插入数据库*/
        user.setUserId(UUID.randomUUID().toString().replace("-", "").toUpperCase());
        user.setStatus(true);
        userMapper.addUser(user);

        /*保存登录状态*/
        HttpSession session = request.getSession();
        session.setAttribute("user",user);
        Cookie cookie = new Cookie("bookStoreUserInfo", session.getId());
        cookie.setMaxAge(24*60*60);
        cookie.setPath("/");
        response.addCookie(cookie);

        return Result.success("注册成功！");
    }

    @Override
    public void updateStatus(User user) {
        userMapper.updateInfo(user);
    }

    @Override
    public void updatePassword(User user) {
        userMapper.updateInfo(user);
    }


    /**
     * @Author: jie
     * @Description: 注册表单校验
     * @Date: 2018/11/24 19:52
     * @Param: [user, session]
     * @return: java.util.Map<java.lang.String,java.lang.String>
     **/
    private Map<String,String> validateRegister(User user, HttpSession session){
        Map<String,String> errors = new HashMap<String,String>();

        //1.用户名校验
        u.setUserName(user.getUserName());
        if(u.getUserName() == null || u.getUserName().trim().isEmpty()){
            errors.put("userName", "用户名不能为空!");
        }else if(u.getUserName().length() < 3 || u.getUserName().length() > 20){
            errors.put("userName", "用户名长度必须在3~20位之间!");
        }else if(userMapper.findInfo(u) != null){
            errors.put("userName", "用户名已被注册!");
            u.setUserName("");
        }
        //2.email校验
        u.setEmail(user.getEmail());
        if(u.getEmail() == null || u.getEmail().trim().isEmpty()){
            errors.put("email", "Email不能为空!");
        }else if(!u.getEmail().matches("^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\\.[a-zA-Z0-9_-]{2,3}){1,2})$")){
            errors.put("email", "Email格式错误!");
        }else if(userMapper.findInfo(u) != null){
            errors.put("email", "Email已被注册!");
        }

        //3.邮箱验证码校验
        String eCode = user.getEmailCode();
        String emailCode;
        /*捕获emailCode空指针异常*/
        try{
            emailCode = session.getAttribute("emailCode").toString();
        }catch (NullPointerException e){
            emailCode = null;
            e.printStackTrace();
        }
        if(eCode == null || eCode.trim().isEmpty()){
            errors.put("emailCode", "邮箱验证码不能为空!");
        }else if(!eCode.equalsIgnoreCase(emailCode)){
            errors.put("emailCode", "邮箱验证码错误!");
        }

        //3.登录密码校验
        String userPassword = user.getUserPassword();
        if(userPassword == null || userPassword.trim().isEmpty()){
            errors.put("userPassword", "密码不能为空!");
        }else if(userPassword.length() < 6 || userPassword.length() > 20){
            errors.put("userPassword", "密码的长度必须在6~20之间!");
        }

        //4.确认密码校验
        String reUserPassword = user.getReUserPassword();
        if(reUserPassword == null || reUserPassword.trim().isEmpty()){
            errors.put("reUserPassword", "确认密码不能为空!");
        }else if(!reUserPassword.equals(userPassword)){
            errors.put("reUserPassword", "两次输入的密码不一致!");
        }

        //5.验证码校验
        String verifyCode = user.getVerifyCode();
        String vCode = session.getAttribute("vCode").toString();
        if(verifyCode == null || verifyCode.trim().isEmpty()){
            errors.put("verifyCode", "验证码不能为空!");
        }else if(!verifyCode.equalsIgnoreCase(vCode)){
            errors.put("verifyCode", "验证码 错误!");
        }
        return errors;
    }

    /**
     * @Author: jie
     * @Description: 用户登录表单校验
     * @Date: 2018/11/24 21:05
     * @Param: [user]
     * @return: java.util.Map<java.lang.String,java.lang.String>
     **/
    public Map<String,String>  validateLogin(User user){
        Map<String,String> errors = new HashMap<String,String>();
        //1.用户名校验
        String userName = user.getUserName();
        if(userName == null || userName.trim().isEmpty()){
            errors.put("userName", "用户名不能为空!");
        }else if(userName.length() < 3 || userName.length() > 20){
            errors.put("userName", "用户名长度必须在3~20位之间!");
        }

        //2.登录密码校验
        String userPassword = user.getUserPassword();
        if(userPassword == null || userPassword.trim().isEmpty()){
            errors.put("userPassword", "密码不能为空!");
        }else if(userPassword.length() < 6 || userPassword.length() > 20){
            errors.put("userPassword", "密码的长度必须在6~20之间!");
        }
        return errors;
    }


    public Result abe(){
        return Result.success("sd");
    }
}
