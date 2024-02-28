package com.zking.controller;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zking.entity.*;
import com.zking.service.*;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {
    ApplicationContext context = new ClassPathXmlApplicationContext("spring.xml");
    IUserService userService = context.getBean(IUserService.class);
    IMovieService movieService = context.getBean(IMovieService.class);
    IOrderService orderService = context.getBean(IOrderService.class);
    IHallService hallService = context.getBean(IHallService.class);
    IScheduleService scheduleService = context.getBean(IScheduleService.class);
    @RequestMapping("user")
    public String manage(Integer a,Integer pageNum,Integer userId,String uName,String name,String uPwd,String email,Integer statue,Integer valid,Model model){
        int pageIndex=1;
        if (pageNum!=null){
            pageIndex=pageNum;
        }
//通过用户名查询用户
        if(uName!=null){
            Page<User> byUserName = userService.findByUserName(uName, pageIndex);
            List<User> records = byUserName.getRecords();
            long pages = byUserName.getPages();
            long current = byUserName.getCurrent();
            model.addAttribute("uName",uName);
            model.addAttribute("current",current);
            model.addAttribute("pages",pages);
            model.addAttribute("userList",records);
            return "user";
        }

//新增
        if(name!=null&&uPwd!=null&&email!=null){
            User user = new User(null, name,uPwd,email,null,null,null);
            int addUser = userService.AddUser(user);
        }

//修改用户
        if (a!=null){
            if (a==1){
                int i = userService.updatePass(userId);//重置
            } else if (a==2) {
                int updateValid = userService.updateValid(userId);//禁用
            }
        }
        Page<User> all = userService.findAll(pageIndex);
        List<User> records = all.getRecords();
        records.forEach(System.out::println);
        long current = all.getCurrent();
        long pages = all.getPages();
        model.addAttribute("current",current);
        model.addAttribute("pages",pages);
        model.addAttribute("userList",records);

        return "user";
    }

    @RequestMapping("movie")
    public String movie(Integer movieId, Integer pageNum, Model model, String movieName, String movieName1, String movieEnglishName,
                        String actors, String director, String describe, String duration, String date, String region, Integer type, Integer movieId1
                        ){

        //新增
        if (movieName1!=null&&movieEnglishName!=null&&actors!=null&&director!=null&&describe!=null&duration!=null&&date!=null&&region!=null&&type!=null){
//            Movie movie = new Movie(null, movieName1,
//                    movieEnglishName, actors,
//                    director, describe
//                    , duration, null,
//                    null, null,
//                    date, region,
//                    null, type);
//            movieService.insert(movie);
        }
//        修改
        if (movieId1!=null){
            Movie movie = movieService.findById(movieId1);
            model.addAttribute("movie",movie);
            return "movie";
        }
        int pageIndex=1;
        if (pageNum!=null){
            pageIndex=pageNum;
        }
        System.out.println("------------");
        if (movieName!=null){
            Page<Movie> moviePage = movieService.findlikeAll(pageIndex, movieName);
            List<Movie> records = moviePage.getRecords();
            long current = moviePage.getCurrent();
            long pages = moviePage.getPages();
            model.addAttribute("movieName",movieName);
            model.addAttribute("current",current);
            model.addAttribute("pages",pages);
            model.addAttribute("movieList",records);
            return "movie";
        }
        System.out.println("删除---------------");
        if (movieId!=null){
            movieService.delete(movieId);
        }
        //            电影管理
        Page<Movie> movieAll = movieService.findMovieAll(pageIndex);
        long pages = movieAll.getPages();
        long current = movieAll.getCurrent();
        model.addAttribute("current",current);
        model.addAttribute("pages",pages);
        List<Movie> records = movieAll.getRecords();
        model.addAttribute("movieList",records);
        for (Movie record : records) {
            System.out.println(record);
        }
        return "movie";
    }

    @RequestMapping("order")
    public String order(Integer pageNum,Model model,Integer userId){
        int pageIndex=1;
        if (pageNum!=null){
            pageIndex=pageNum;
        }
        System.out.println("-------------");
        if (userId!=null){
            Page<Order> byUserId = orderService.findByUserId(pageIndex, userId);
            List<Order> records = byUserId.getRecords();
            long pages = byUserId.getPages();
            long current = byUserId.getCurrent();
            model.addAttribute("userId",userId);
            model.addAttribute("orderList",records);
            model.addAttribute("pages",pages);
            model.addAttribute("current",current);
            return "order";
        }

        //订单管理
            Page<Order> all = orderService.findAll(pageIndex);
            List<Order> records = all.getRecords();
            long pages = all.getPages();
            long current = all.getCurrent();
            all.getRecords().forEach(System.out::println);
        System.out.println("当前页"+current);
        System.out.println("最大页"+pages);
            model.addAttribute("orderList",records);
            model.addAttribute("pages",pages);
            model.addAttribute("current",current);
            return "order";
    }
    @RequestMapping("schedule")
    public String schedule(Integer pageNum, Model model,Integer deleteId, String hallName, Integer movieId, Integer hallId, Integer price, String date,Integer type) throws ParseException {

       if (date!=null){
           System.out.println("时间格式为："+date);
           SimpleDateFormat ft = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
           Date time1 = ft.parse(date);
           System.out.println("转化后的时间为："+time1);
           SimpleDateFormat dFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); //HH表示24小时制；
           String format = dFormat.format(time1);
           System.out.println("最终转化成String类型为："+format);
           SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
           Date parse = simpleDateFormat.parse(format);
           System.out.println("最终转化成Date类型为："+parse);
       }

        System.out.println("新增----");
        if (movieId!=null&&hallId!=null&&price!=null&&date!=null&&type!=null){
//            Schedule schedule = new Schedule(null, hallId, movieId, date, price, null, type, null, null);
//            scheduleService.insert(schedule);
        }
        System.out.println("下架------");
        if (deleteId!=null){
            scheduleService.delete11(deleteId);
        }
        int pageIndex=1;
        if (pageNum!=null){
            pageIndex=pageNum;
        }
        System.out.println("模糊查询--------------");
        if (hallName!=null && !hallName.isEmpty()){
            System.out.println("hallName"+hallName);
            List<Schedule> byName = scheduleService.findByName(pageIndex,hallName);
            int size = byName.size();
            int max = scheduleService.Max1(size,hallName);
            System.out.println("最大页为："+max);
            model.addAttribute("hallName",hallName);
            model.addAttribute("current",pageIndex);
            model.addAttribute("pages",max);
            model.addAttribute("list",byName);
            return "schedule";
        }

        List<Schedule> all = scheduleService.findAll(pageIndex);
        int size = all.size();
        int max = scheduleService.Max(size);
        System.out.println("最大页为："+max);
        model.addAttribute("current",pageIndex);
        model.addAttribute("pages",max);
        model.addAttribute("list",all);
        return "schedule";
    }

}
