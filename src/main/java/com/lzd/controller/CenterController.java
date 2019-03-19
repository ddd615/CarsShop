package com.lzd.controller;

import com.lzd.pojo.Center;
import com.lzd.service.CenterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/front")
public class CenterController {
    @Autowired
    private CenterService centerService;
    @RequestMapping("/center")
    public String query(@RequestParam("provide")String p, @RequestParam("city")String c, Model model){
        List<Center> list =centerService.query(p,c);
        model.addAttribute("sale",list);
        return "front/order";
    }
}
