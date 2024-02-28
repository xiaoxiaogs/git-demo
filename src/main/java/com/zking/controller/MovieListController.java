package com.zking.controller;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zking.entity.Movie;
import com.zking.entity.MovieType;
import com.zking.entity.MovieTypeId;
import com.zking.entity.User;
import com.zking.service.IMovieService;
import com.zking.service.IMovieTypeService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Controller
public class MovieListController {
    ApplicationContext context = new ClassPathXmlApplicationContext("spring.xml");
    IMovieService movieService = context.getBean(IMovieService.class);
    IMovieTypeService movieTypeService = context.getBean(IMovieTypeService.class);

//    待映
    @RequestMapping("movieList")
    public String mainPage(Integer pageNum, String address , Integer typeId, Model model, HttpSession session){
        User user = (User) session.getAttribute("login");
        if (user!=null){
            System.out.println("用户为："+user);
            model.addAttribute("user",user);
        }
        List<MovieType> allType = movieTypeService.findAllType();
        model.addAttribute("allType",allType);

        //        查询所有地区
        List<Movie> all = movieService.findAll();
        model.addAttribute("all",all);
        System.out.println("区域名称为："+address);
        if (typeId!=null){
            List<MovieTypeId> typeAll = movieTypeService.findTypeAll(typeId, 0);
            model.addAttribute("movielist",typeAll);
            return "movieList";
        }
        int pageIndex=1;
        if (pageNum!=null){
            if (address!=null){
                //        区域名称
                model.addAttribute("address",address);
            }
                pageIndex=pageNum;
                System.out.println("当前页为："+pageIndex);
                System.out.println("下一页的区域为："+address);
                Page<Movie> moviePage = movieService.sortMovieByBoxOffice(0,pageIndex,address);
                List<Movie> records1 = moviePage.getRecords();
                System.out.println("-------------------------------------------------------------------------------");
                moviePage.getRecords().forEach(System.out::println);
                long pages = moviePage.getPages();
                long current = moviePage.getCurrent();
                System.out.println("当前页为："+current);
                System.out.println("总页数为：："+pages);
                model.addAttribute("address",address);
                model.addAttribute("pages",pages);
                model.addAttribute("current",current);
                model.addAttribute("movielist",records1);
            return "movieList";
        }



//        查询电影区域和查询所有即将上映的电影
        Page<Movie> moviePage = movieTypeService.sortMovieStartById(0, pageIndex,address);
        List<Movie> records = moviePage.getRecords();
        long pages = moviePage.getPages();
        long current = moviePage.getCurrent();
        model.addAttribute("pages",pages);
        model.addAttribute("current",current);
        model.addAttribute("movielist",records);

        return "movieList";
    }



//    正在热映
    @RequestMapping("movieList1")
    public String selectPage(String typename,String address,Integer pageNum, Model model,Integer typeId,HttpSession session){
        User user = (User) session.getAttribute("login");
        if (user!=null){
            System.out.println("用户为："+user);
            model.addAttribute("user",user);
        }
//        根据分类进行查询对应数据





        //        查询所有类型
        List<MovieType> allType = movieTypeService.findAllType();
        model.addAttribute("allType",allType);
        //        查询电影区域和查询所有即将上映的电影
        List<Movie> records = movieTypeService.sortMovieStartById(0, 1,address).getRecords();
        model.addAttribute("movielist",records);
        //        查询所有地区
        List<Movie> all = movieService.findAll();
        model.addAttribute("all",all);
        if (typeId!=null){
            List<MovieTypeId> typeAll = movieTypeService.findTypeAll(typeId, 1);
            model.addAttribute("list",typeAll);
            return "movieList1";
        }

        int pageIndex=1;
        if (pageNum!=null){
            pageIndex=pageNum;
            System.out.println("当前页为："+pageIndex);
            System.out.println("下一页的区域为："+address);
            Page<Movie> moviePage = movieService.sortMovieByBoxOffice(1,pageIndex,address);
            List<Movie> records1 = moviePage.getRecords();
            System.out.println("-------------------------------------------------------------------------------");
            moviePage.getRecords().forEach(System.out::println);
            long pages = moviePage.getPages();
            long current = moviePage.getCurrent();
            System.out.println("当前页为："+current);
            System.out.println("总页数为：："+pages);
            model.addAttribute("address",address);
            model.addAttribute("pages",pages);
            model.addAttribute("current",current);
            model.addAttribute("list",records1);
            return "movieList1";
        }

//          按热门排序查询所有上映的电影
        Page<Movie> moviePage = movieService.sortMovieByBoxOffice(1,pageIndex,address);

//        分页

        long pages = moviePage.getPages();
        long current = moviePage.getCurrent();
        model.addAttribute("pages",pages);
        model.addAttribute("current",current);
//        数据
        List<Movie> records1 = moviePage.getRecords();
        records1.forEach(System.out::println);
        model.addAttribute("list",records1);
        if (address!=null){
            //        区域名称
            model.addAttribute("address",address);
        }

        return "movieList1";
    }

    @RequestMapping("movieDetail")
    public String movieDetail(Integer movieId,Model model,HttpSession session){
        User user = (User) session.getAttribute("login");
        if (user!=null){
            System.out.println("用户为："+user);
            model.addAttribute("user",user);
        }
        System.out.println("传递过来的ID为："+movieId);
        Movie movie = movieService.findById(movieId);
        List<String> strings = splitStr(movie.getMovieActor());
        strings.forEach(System.out::println);
        if (strings!=null){
            model.addAttribute("actors",strings);
        }
        model.addAttribute("movie",movie);
        return "movieDetail";
    }
    @RequestMapping("textmovie")
    public String textmovie(Integer movieId,Model model){
        System.out.println("传递过来的ID为："+movieId);
        Movie movie = movieService.findById(movieId);
        model.addAttribute("movie",movie);
        return "textmovie";
    }

//    分割方法
    public static List<String> splitStr(String name){
        //        根据    ：   进行分割
        List<String> list = new ArrayList<>();
        if (name!=null){
            String[] strs = name.split(":");
            list.addAll(Arrays.asList(strs));
            return list;
        }
        return null;
    }
}
