package cn.jie.bookstore.book.mapper;


import cn.jie.bookstore.book.pojo.Book;

import java.util.List;

/**
 * @ClassName: BestSellerMapper
 * @Description: TODO
 * @Author: jie
 * @Date: 2018/11/28 12:51
 * @Version: 1.0
 */
public interface BookMapper {

    /**
    * @Author: jie
    * @Description: 查询所有今日畅销书籍
    * @Date: 2018/11/28 13:00
    * @Param: []
    * @return: java.util.List<cn.jie.bookstore.bestseller.pojo.Book>
    **/
    public List<Book> findBestSellerBook();

    /**
    * @Author: jie
    * @Description: 查询所有图书
    * @Date: 2018/11/29 12:37
    * @Param: []
    * @return: java.util.List<cn.jie.bookstore.book.pojo.Book>
    **/
    public List<Book> findAllBook();
}
