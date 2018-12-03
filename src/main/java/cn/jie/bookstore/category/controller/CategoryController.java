package cn.jie.bookstore.category.controller;

import cn.jie.bookstore.category.pojo.Category;
import cn.jie.bookstore.category.service.CategoryService;
import cn.jie.bookstore.utils.result.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @ClassName: CategoryController
 * @Description: TODO
 * @Author: jie
 * @Date: 2018/11/27 9:12
 * @Version: 1.0
 */
@Controller
public class CategoryController {

    @Autowired
    private CategoryService categoryService;

    @ResponseBody
    @RequestMapping("/categoryList")
    public Object categoryList(){
        List<Category> categoryList = categoryService.categoryList();

        return Result.success("成功！").addData("category",categoryList);
    }
}
