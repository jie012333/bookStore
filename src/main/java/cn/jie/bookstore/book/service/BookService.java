package cn.jie.bookstore.book.service;

import cn.jie.bookstore.book.pojo.Book;

import java.util.List;

/**
 * @ClassName: BestSellerService
 * @Description: TODO
 * @Author: jie
 * @Date: 2018/11/28 12:49
 * @Version: 1.0
 */
public interface BookService {

    /**
    * @Author: jie
    * @Description: 查询所有今日畅销书籍
    * @Date: 2018/11/28 15:24
    * @Param: []
    * @return: java.util.List<cn.jie.bookstore.book.pojo.Book>
    **/
    public List<Book> findBestSellerBook();

    public List<Book> findAllBook();
}
