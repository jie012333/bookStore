package cn.jie.bookstore.book.service.impl;

import cn.jie.bookstore.book.mapper.BookMapper;
import cn.jie.bookstore.book.pojo.Book;
import cn.jie.bookstore.book.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName: BestSellerServiceImpl
 * @Description: TODO
 * @Author: jie
 * @Date: 2018/11/28 12:50
 * @Version: 1.0
 */
@Service
public class BookServiceImpl implements BookService {

    @Autowired
    private BookMapper bookMapper;

    @Override
    public List<Book> findBestSellerBook() {
        return bookMapper.findBestSellerBook();
    }

    @Override
    public List<Book> findAllBook() {
        return bookMapper.findAllBook();
    }


}
