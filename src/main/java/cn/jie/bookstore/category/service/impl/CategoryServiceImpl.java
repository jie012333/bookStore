package cn.jie.bookstore.category.service.impl;

import cn.jie.bookstore.category.mapper.CategoryMapper;
import cn.jie.bookstore.category.pojo.Category;
import cn.jie.bookstore.category.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName: CategoryServiceImpl
 * @Description: TODO
 * @Author: jie
 * @Date: 2018/11/27 9:10
 * @Version: 1.0
 */
@Service
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    private CategoryMapper categoryMapper;


    @Override
    public List<Category> categoryList() {
        List<Category> list = categoryMapper.findAll();
        return list;
    }
}
