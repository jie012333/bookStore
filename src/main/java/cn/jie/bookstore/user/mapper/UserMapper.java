package cn.jie.bookstore.user.mapper;

import cn.jie.bookstore.user.pojo.User;

public interface UserMapper {

    /**
    * @Author: jie
    * @Description: 通过字段查找用户，进行用户名，emali校验，通过激活码查询用户,用户名和密码查询用户
    * @Date: 2018/11/24 12:57
    * @Param: [user]
    * @return: cn.jie.bookstore.user.pojo.User
    **/
    public User findInfo(User user);

    /**
    * @Author: jie
    * @Description: 用户注册
    * @Date: 2018/11/24 12:57
    * @Param: [user]
    * @return: java.lang.Integer
    **/
    public Integer addUser(User user);


    /**
    * @Author: jie
    * @Description: 更改用户信息（用户状态，密码）
    * @Date: 2018/11/24 12:57
    * @Param: [user]
    * @return: void
    **/
    public void updateInfo(User user);



}
