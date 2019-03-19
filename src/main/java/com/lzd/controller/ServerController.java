package com.lzd.controller;

import com.lzd.pojo.Server;
import com.lzd.service.ServerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/front")
public class ServerController {
    @Autowired
    private ServerService serverService;
    @RequestMapping("/server")
    public String main(@RequestParam("provide")String p, @RequestParam("city")String c, Model model){
        List<Server> list=serverService.query(p,c);
        model.addAttribute("server",list);
        return "front/fuwu";
    }

}
