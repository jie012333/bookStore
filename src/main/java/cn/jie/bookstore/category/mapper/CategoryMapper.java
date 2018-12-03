package cn.jie.bookstore.category.mapper;

import cn.jie.bookstore.category.pojo.Category;

import java.util.List;

/**
 * @ClassName: CategoryMapper
 * @Description: 图书分类mapper
 * @Author: jie
 * @Date: 2018/11/27 9:08
 * @Version: 1.0
 */
public interface CategoryMapper {

    public List<Category> findAll();

    public List<Category> findByParent();

}
