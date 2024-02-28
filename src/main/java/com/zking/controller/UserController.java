package com.zking.controller;

import com.alibaba.fastjson.JSONObject;
import com.zking.entity.Movie;
import com.zking.entity.MovieType;
import com.zking.entity.User;
import com.zking.service.IMovieService;
import com.zking.service.IMovieTypeService;
import com.zking.service.IUserService;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class UserController {
    ApplicationContext context = new ClassPathXmlApplicationContext("spring.xml");
    IUserService userService = context.getBean(IUserService.class);

    //注册
    @RequestMapping ("/register")
    @ResponseBody
    public Map<String,String> register(User user){
        Map<String,String> map = new HashMap<>();
        String msg = null;
        //判断用户名是否存在
        System.out.println("user:"+user);
        List<User> list = userService.findUserByName(user.getUserName());
        if (list!=null && list.size()>0){
            //用户名已存在
            msg = "exists";
        }else {//可以正常注册
            Integer register = 0;
            try {
                register = userService.register(user);
            } catch (Exception e){
                e.printStackTrace();
            }
            System.out.println("register====="+register);
            if (register>0){
                msg =  "success";
            }else {
                msg =  "fail";
            }
        }
        map.put("msg",msg);
        return map;
    }
//  用户退出
    @RequestMapping("statr")
    public String start(HttpSession session){
//            代表用户点击了退出
            session.removeAttribute("login");
        return "mainPage";
    }
    //用户登录
    @RequestMapping("login")
    @ResponseBody
    public JSONObject login(String user_name, String  user_pwd, HttpServletRequest request){
        JSONObject jsonObject = new JSONObject();
        System.out.println("username====="+user_name);
        System.out.println("pass====="+user_pwd);
        User login = userService.login(user_name, user_pwd);
        if (login!=null){//登录成功
            HttpSession session = request.getSession();
            session.setAttribute("login",login);
            jsonObject.put("msg","success");
            jsonObject.put("date",login);
            request.getSession().setAttribute("userName",user_name);
        }else {
            jsonObject.put("msg","fail");
        }
        return jsonObject;
    }


    @RequestMapping("center")
    public String center(HttpSession session,Model model){
        User user = (User) session.getAttribute("login");
        model.addAttribute("user",user);
        return "center";
    }

    @RequestMapping("login1")
    public String login1(){
        return "login";
    }
}
