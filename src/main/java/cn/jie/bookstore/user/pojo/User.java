package cn.jie.bookstore.user.pojo;
import org.springframework.stereotype.Component;

@Component
public class User {
    private String userId;  //uuid主键
    private String userName;  //用户名
    private String userPassword;  // 密码
    private String email; //邮箱
    private boolean status; //状态，true：激活

    //注册表单属性
    private String emailCode;
    private String reUserPassword;  //确认密码
    private String verifyCode; //验证码

    //修改密码表单
    private String newPassword;//新密码

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public String getEmailCode() {
        return emailCode;
    }

    public void setEmailCode(String emailCode) {
        this.emailCode = emailCode;
    }

    public String getReUserPassword() {
        return reUserPassword;
    }

    public void setReUserPassword(String reUserPassword) {
        this.reUserPassword = reUserPassword;
    }

    public String getVerifyCode() {
        return verifyCode;
    }

    public void setVerifyCode(String verifyCode) {
        this.verifyCode = verifyCode;
    }

    public String getNewPassword() {
        return newPassword;
    }

    public void setNewPassword(String newPassword) {
        this.newPassword = newPassword;
    }
}

