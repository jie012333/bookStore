package cn.jie.bookstore.user.service;

import cn.jie.bookstore.user.pojo.User;
import cn.jie.bookstore.utils.result.Result;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @ClassName: UserService
 * @Description: TODO
 * @Author: jie
 * @Date: 2018/11/24 10:45
 * @Version: 1.0
 */
public interface UserService {

    /**
     * @Author: jie
     * @Description: 校验userName/email是否注册，未注册返回true,已注册返回false
     * @Date: 2018/11/24 13:48
     * @Param: [user]
     * @return: boolean
     **/
    public boolean validateUserByInfo(User user);



    /**
    * @Author: jie
    * @Description: 通过激活码查询用户
    * @Date: 2018/11/24 13:55
    * @Param: [user]
    * @return: cn.jie.bookstore.user.pojo.User
    **/
    public User findUserByCode(User user);


    /**
    * @Author: jie
    * @Description: 发送邮件
    * @Date: 2018/11/25 11:24
    * @Param: [user, request, response]
    * @return: java.lang.String
    **/
    public Result emailValidation(String email, HttpServletRequest request);

    /**
     * @Author: jie
     * @Description: 校验userName+userPassword是否正确，正确返回true,否则返回false
     *                 true则把user保持到session中
     * @Date: 2018/11/24 20:22
     * @Param: [user]
     * @return: boolean
     **/
    public Result login(User user, HttpServletRequest request, HttpServletResponse response);

    /**
    * @Author: jie
    * @Description: 用户注册
    * @Date: 2018/11/24 13:57
    * @Param: [user]
    * @return: java.lang.Integer
    **/
    public Result addUser(User user, HttpServletRequest request,HttpServletResponse response);

    /**
    * @Author: jie
    * @Description: 修改用户状态
    * @Date: 2018/11/24 13:58
    * @Param: [user]
    * @return: void
    **/
    public void updateStatus(User user);

    /**
    * @Author: jie
    * @Description: 修改密码
    * @Date: 2018/11/24 13:59
    * @Param: [user]
    * @return: void
    **/
    public void updatePassword(User user);




    public Result abe();
}
