package com.zking.controller;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zking.entity.Cinema;
import com.zking.entity.Movie;
import com.zking.entity.User;
import com.zking.service.ICinemaService;
import com.zking.service.IMovieService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class ListController {
    ApplicationContext context = new ClassPathXmlApplicationContext("spring.xml");
    IMovieService movieService = context.getBean(IMovieService.class);
    ICinemaService cinemaService = context.getBean(ICinemaService.class);
    @RequestMapping("index12")
    public String mainPage( Model model){
        return "index12";
    }


    @RequestMapping("list")
    public String list(Integer pageNum, String brand, Integer movieId, Integer typeId, Model model, HttpSession session){
        User user = (User) session.getAttribute("login");
        if (user!=null){
            System.out.println("用户为："+user);
            model.addAttribute("user",user);
        }
        int pageIndex=1;
        if (pageNum != null){
            pageIndex=pageNum;
        }
        if (typeId!=null){

        }
        System.out.println("用户传递过来的品牌为：+"+brand);
        if (brand!=null){
            Page<Cinema> bybrand = cinemaService.findBybrand(brand, pageIndex);
            long pages = bybrand.getPages();
            long current = bybrand.getCurrent();
            List<Cinema> records = bybrand.getRecords();
            model.addAttribute("pages",pages);
            model.addAttribute("current",current);
            model.addAttribute("cinemaList",records);
            return "list";
        }
        if (movieId!=null){
            //        该电影的详情影院
            Movie movie = movieService.findById(movieId);
            model.addAttribute("movie",movie);
        }

//        所有品牌
        List<Cinema> brandAll = cinemaService.findBrandAll();
        model.addAttribute("brandAll",brandAll);

        Page<Cinema> all = cinemaService.findAll(pageIndex);
        all.getRecords().forEach(System.out::println);
        long current = all.getCurrent();
        long pages = all.getPages();
        model.addAttribute("current",current);
        model.addAttribute("pages",pages);
        List<Cinema> records = all.getRecords();
        model.addAttribute("cinemaList",records);
        return "list";
    }


}
