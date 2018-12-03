package cn.jie.bookstore.book.controller;

import cn.jie.bookstore.book.pojo.Book;
import cn.jie.bookstore.book.service.BookService;
import cn.jie.bookstore.utils.result.Result;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;


/**
 * @ClassName: BestSellerController
 * @Description: TODO
 * @Author: jie
 * @Date: 2018/11/28 12:53
 * @Version: 1.0
 */
@Controller
public class BookController {

    @Autowired
    private BookService bookService;

    /**
    * @Author: jie
    * @Description: 获取今日畅销书籍
    * @Date: 2018/11/29 13:10
    * @Param: []
    * @return: java.lang.Object
    **/
    @ResponseBody
    @RequestMapping("/sellerBook")
    public Object sellerBook(){
        List<Book> bookList = bookService.findBestSellerBook();
        if(bookList == null){
            return Result.error("获取数据失败！");
        }
        return Result.success("获取数据成功！").addData("bookList",bookList);
    }

    /**
    * @Author: jie
    * @Description: 获取所有数据库书籍
    * @Date: 2018/11/29 13:10
    * @Param: []
    * @return: java.lang.Object
    **/
    @ResponseBody
    @RequestMapping("/bookList")
    public Object bookList(@RequestParam(value="pageNum",defaultValue="1")Integer pageNum,
                                 @RequestParam(value="pageSize",defaultValue="12")Integer pageSize){

        if (pageNum==null){
            pageNum = 1;
        }
        PageHelper.startPage(pageNum,pageSize);
        List<Book> bookList = bookService.findAllBook();
        if(bookList == null){
            return Result.error("获取数据失败！");
        }
        PageInfo<Book> pageInfo = new PageInfo<Book>(bookList);
        return Result.success("获取数据成功！").addData("pageInfo",pageInfo);
    }



}
