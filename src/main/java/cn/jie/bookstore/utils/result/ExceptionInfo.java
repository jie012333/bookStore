package cn.jie.bookstore.utils.result;

/**
 * @ClassName: ExceptionInfo
 * @Description: TODO
 * @Author: jie
 * @Date: 2018/11/24 12:24
 * @Version: 1.0
 */
public class ExceptionInfo extends Exception{

    public ExceptionInfo() {
        super();
    }

    public ExceptionInfo(String message) {
        super(message);
    }

    public ExceptionInfo(String message, Throwable cause) {
        super(message, cause);
    }

    public ExceptionInfo(Throwable cause) {
        super(cause);
    }

    public ExceptionInfo(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }
}
