package com.lzd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/app")
public class AppController {
    @RequestMapping("/index")
     public String app(){
         return "behind/index";
     }

}
