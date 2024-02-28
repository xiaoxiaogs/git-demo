package com.zking.controller;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zking.entity.*;
import com.zking.service.*;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Controller
public class BuySeatController {
    ApplicationContext context = new ClassPathXmlApplicationContext("spring.xml");
    IMovieService movieService = context.getBean(IMovieService.class);
    IScheduleService scheduleService = context.getBean(IScheduleService.class);
    ICinemaService cinemaService = context.getBean(ICinemaService.class);
    IOrderService orderService = context.getBean(IOrderService.class);

    @RequestMapping("buySeat")
    public String buySeat(Integer cinemaId, Integer movieId, int scheduleId, Model model, HttpSession session){
        User user = (User) session.getAttribute("login");
        if (user!=null){
            System.out.println("用户为："+user);
            model.addAttribute("user",user);
        }
//        查询选座的数量
        List<Order> list1 = orderService.findAlloposition(scheduleId);
        System.out.println("查询的座位数量----------");
        List<Integer> list = new ArrayList<>();
        for (int i = 0; i < list1.size(); i++) {
            int p = Integer.parseInt(list1.get(i).getOrderPosition());
            System.out.println(p);
            list.addAll(Arrays.asList(p));
        }

        list.forEach(System.out::println);
        model.addAttribute("list",list);
        System.out.println("场次ID"+scheduleId);
        System.out.println("电影ID："+movieId);
        System.out.println("电影院ID："+cinemaId);

//        String ccc = aaa-bbb;
//        选座右边介绍
        List<Schedule> byMovieIdAndCinemaId = scheduleService.findByMovieIdAndCinemaId(cinemaId, movieId);
        System.out.println("----------------------------------------------------------------");
        byMovieIdAndCinemaId.forEach(System.out::println);
        Movie movie = movieService.findById(movieId);
        model.addAttribute("movie",movie);
        Cinema byId = cinemaService.findById(cinemaId);
        model.addAttribute("cinema",byId);

        for (int i = 0; i < byMovieIdAndCinemaId.size(); i++) {
            if (byMovieIdAndCinemaId.get(i).getScheduleId()==scheduleId){
                System.out.println("该对象为：========="+byMovieIdAndCinemaId.get(i));

                Schedule schedule = byMovieIdAndCinemaId.get(i);
                System.out.println("该对象为：============--------------------------------------------------"+schedule);
                model.addAttribute("schedule",byMovieIdAndCinemaId.get(i));
            }
//

        }
        return "buySeat";
    }
}
