package com.zking.controller;

import com.alibaba.fastjson.JSONObject;
import com.zking.service.IMovieService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ScheduleController {
    ApplicationContext context = new ClassPathXmlApplicationContext("spring.xml");
    IMovieService movieService = context.getBean(IMovieService.class);

    @RequestMapping("findScheduleById")
    public JSONObject findScheduleById(@RequestParam("schedule_id") long scheduleId){
        JSONObject jsonObject = new JSONObject();

        return jsonObject;
    }
}
