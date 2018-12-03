package cn.jie.bookstore.category.pojo;

import java.util.List;

/**
 * @ClassName: category
 * @Description: 类别实体表
 * @Author: jie
 * @Date: 2018/11/26 22:40
 * @Version: 1.0
 */
public class Category {

    private int cid;  /*主键*/
    private String cname;  /*类别名称*/
    private int cpid;   /*父id*/
    private boolean status;  /*状态*/
    private int priority;   /*同级别优先级*/

    private List<Category> childList;  /*儿子分类*/

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public int getCpid() {
        return cpid;
    }

    public void setCpid(int cpid) {
        this.cpid = cpid;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public int getPriority() {
        return priority;
    }

    public void setPriority(int priority) {
        this.priority = priority;
    }

    public List<Category> getChildList() {
        return childList;
    }

    public void setChildList(List<Category> childList) {
        this.childList = childList;
    }
}
