package com.lzd.controller;

import com.lzd.pojo.NewsDetail;
import com.lzd.service.NewsDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import java.util.List;

@Controller
@RequestMapping("/front")
public class NewsDetailController {

    @Autowired
    private NewsDetailService newsDetailService;
    @RequestMapping("/news")
    public String main(Model model){
        List<NewsDetail> list =newsDetailService.query1();
        List<NewsDetail> list1 =newsDetailService.query2();
        List<NewsDetail> list2 =newsDetailService.query3();
        List<NewsDetail> list3 =newsDetailService.query4();
        model.addAttribute("news",list);
        model.addAttribute("news1",list1);
        model.addAttribute("news2",list2);
        model.addAttribute("news3",list3);
        return "front/news";
    }
    @RequestMapping("/index")
    public String index(){
        return "front/index";
    }
    @RequestMapping("/about")
    public String about(){
        return "front/firm";
    }
}
