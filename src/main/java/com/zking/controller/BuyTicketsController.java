package com.zking.controller;

import com.zking.entity.*;
import com.zking.service.ICinemaService;
import com.zking.service.IHallService;
import com.zking.service.IMovieService;
import com.zking.service.IScheduleService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

@Controller
public class BuyTicketsController {
    ApplicationContext context = new ClassPathXmlApplicationContext("spring.xml");
    ICinemaService cinemaService = context.getBean(ICinemaService.class);
    IMovieService movieService = context.getBean(IMovieService.class);
    IHallService hallService = context.getBean(IHallService.class);
    IScheduleService scheduleService = context.getBean(IScheduleService.class);
//    电影院详情页面
    @RequestMapping("buyTickets")
    public String buyTickets(Integer cinemaId, Integer movieId, Model model, HttpSession session){
        User user = (User) session.getAttribute("login");
        if (user!=null){
            System.out.println("用户为："+user);
            model.addAttribute("user",user);
        }

//        根据电影id查询对应的电影数据
        if (movieId!=null){
//            今天场次
            List<Schedule> byMovieIdAndCinemaId = scheduleService.findByMovieIdAndCinemaId(cinemaId, movieId);
            byMovieIdAndCinemaId.forEach(System.out::println);
            System.out.println("-----------------------------");
            Movie movie = movieService.findById(movieId);
            model.addAttribute("movie",movie);
            model.addAttribute("schedule",byMovieIdAndCinemaId);
//          明天场次
//            List<Schedule> byMovieIdAndCinemaId1 = scheduleService.findByMovieIdAndCinemaId1(cinemaId, movieId);
//            byMovieIdAndCinemaId1.forEach(System.out::println);
//            System.out.println("-----------------------------");
//            model.addAttribute("schedule1",byMovieIdAndCinemaId1);
        }
        Cinema byId = cinemaService.findById(cinemaId);
        model.addAttribute("cinema",byId);
        model.addAttribute("cinemaId",cinemaId);
//        查询所有
        List<Movie> all = movieService.findAll(1);
        model.addAttribute("list",all);
        return "buyTickets";
    }
}
