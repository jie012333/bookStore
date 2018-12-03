package cn.jie.bookstore.category.service;

import cn.jie.bookstore.category.pojo.Category;

import java.util.List;

/**
 * @ClassName: CategoryService
 * @Description: 图书分类service
 * @Author: jie
 * @Date: 2018/11/27 9:10
 * @Version: 1.0
 */
public interface CategoryService {
    public List<Category> categoryList();
}
