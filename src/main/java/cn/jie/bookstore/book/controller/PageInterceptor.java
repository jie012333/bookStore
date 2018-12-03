package cn.jie.bookstore.book.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

import java.util.List;
/**
 * @ClassName: PageInterceptor
 * @Description: TODO
 * @Author: jie
 * @Date: 2018/11/29 18:52
 * @Version: 1.0
 */

@Aspect
@Component
public class PageInterceptor {

    @Around("execution(* cn.jie.bookstore.book.controller..*.*Paging(..))")
    public Object process(ProceedingJoinPoint point) throws Throwable {
        Object[] args = point.getArgs();
        if(args.length<2) {
            //规定原方法的参数最后两个是当前页和每页条数
            throw new Exception("参数不够分页");
        }
        PageHelper.startPage((Integer)args[args.length-2],(Integer)args[args.length-1]);
        List list = (List) point.proceed();
        PageInfo pageInfo = new PageInfo(list);
        return pageInfo;
    }

}
