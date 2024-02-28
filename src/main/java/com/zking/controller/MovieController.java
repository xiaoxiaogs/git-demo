package com.zking.controller;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zking.entity.Movie;
import com.zking.entity.User;
import com.zking.service.IMovieService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.sql.PreparedStatement;
import java.util.List;

@Controller
public class MovieController {
    ApplicationContext context = new ClassPathXmlApplicationContext("spring.xml");
    IMovieService movieService = context.getBean(IMovieService.class);
    @RequestMapping("mainPage")
    public String mainPage(String name, Model model, HttpSession session){
        User user = (User) session.getAttribute("login");
        if (user!=null){
            System.out.println("用户为："+user);
            model.addAttribute("user",user);
        }
        //查询上架的所有电影
        Page<Movie> page = movieService.findPage(1, 1, 8);
        List<Movie> records = page.getRecords();
        model.addAttribute("movie", records);
        long total = page.getTotal();
        model.addAttribute("total", total);
        //查询待映电影
        Page<Movie> page1 = movieService.findPage(0,1,8);
        List<Movie> records1 = page1.getRecords();
        model.addAttribute("movie1", records1);
        long total1 = page1.getTotal();
        model.addAttribute("total1", total1);

//        根据票房排序
        Page<Movie> moviePage = movieService.sortMovieByBoxOffice(1,1,name);
        List<Movie> records2 = moviePage.getRecords();
        model.addAttribute("sortList",records2);

//        最受期待
        Page<Movie> moviePage1 = movieService.sortMovieByBoxOffice(0,1,name);
        List<Movie> records3 = moviePage1.getRecords();
        model.addAttribute("sortList1",records3);
        System.out.println("最受期待：===========");
        records3.forEach(System.out::println);
        return "mainPage";
    }

}
