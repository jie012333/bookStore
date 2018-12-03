package cn.jie.bookstore.utils.result;

import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.Map;

/**
 * @ClassName: Result
 * @Description: 统一返回JSON格式
 * @Author: jie
 * @Date: 2018/11/23 19:27
 * @Version: 1.0
 */
@Component
public class Result{
    private String code; //200：成功，400：错误
    private String msg;
    private Map<String,Object> data = new HashMap<String, Object>();
    private String url;

    public static Result success(String msg){
        Result result = new Result();
        result.setCode("200");
        result.setMsg(msg);
        return result;
    }
    public static Result error(String msg){
        Result result = new Result();
        result.setCode("400");
        result.setMsg(msg);
        return result;
    }
    public Result addData(String key,Object value){
        this.getData().put(key,value);
        return this;
    }
    public Result addUrl(String url){
        this.setUrl(url);
        return this;
    }
    public String getCode() {
        return code;
    }
    public void setCode(String code) {
        this.code = code;
    }
    public String getMsg() {
        return msg;
    }
    public void setMsg(String msg) {
        this.msg = msg;
    }
    public Map<String, Object> getData() {
        return data;
    }
    public void setData(Map<String, Object> data) {
        this.data = data;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
