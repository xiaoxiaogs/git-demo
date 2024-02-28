package com.zking.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {
    @RequestMapping("manage")
    public String manage(){
        return "manage";
    }
    @RequestMapping("a")
    public String a(){
        return "a";
    }

}
