package com.zking.controller;

import com.zking.entity.Movie;
import com.zking.entity.User;
import com.zking.mapper.IMovieMapper;
import com.zking.service.IMovieService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class IndexController {
    ApplicationContext context = new ClassPathXmlApplicationContext("spring.xml");
    IMovieService movieService = context.getBean(IMovieService.class);

    @GetMapping({"/", "/index"})
    public String index() {
        return "index";
    }

    @RequestMapping("grzx")
    public String grzx(){
        return "grzx";
    }

}
