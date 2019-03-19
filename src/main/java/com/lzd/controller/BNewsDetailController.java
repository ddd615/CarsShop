package com.lzd.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lzd.pojo.NewsDetail;
import com.lzd.service.NewsDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/app")
public class BNewsDetailController {
    @Autowired
    private NewsDetailService newsDetailService;
    @RequestMapping("/bnews")
    public String main(@RequestParam(required = true,defaultValue = "1")Integer pageNo, @RequestParam(required = true,defaultValue = "5")Integer pageSize,Model model){
        PageHelper.startPage(pageNo, pageSize);
        List<NewsDetail> list=newsDetailService.query5();
        PageInfo<NewsDetail> page=new PageInfo<NewsDetail> (list);
        model.addAttribute("page",page);
        model.addAttribute("news",list);
        return "behind/bnews";
    }

    @RequestMapping("/query/title")
    public String queryByTitle(@RequestParam ("title")String title ,Model model){
        model.addAttribute("title",title);
        PageHelper.startPage(1, 5);

        List<NewsDetail> list=newsDetailService.queryByTitle(title);
        PageInfo<NewsDetail> page=new PageInfo<NewsDetail> (list);
        model.addAttribute("page",page);
        model.addAttribute("news",list);
        return "behind/bnews";
    }

    @RequestMapping("/news/add")
    public  String addNews(NewsDetail newsDetail,Model model ){
       boolean suc=newsDetailService.add(newsDetail);
        PageHelper.startPage(1, 5);
        List<NewsDetail> list=newsDetailService.query5();
        PageInfo<NewsDetail> page=new PageInfo<NewsDetail> (list);
        model.addAttribute("page",page);
        model.addAttribute("news",list);
        return "behind/bnews";
    }
    @RequestMapping("/news/delete/{id}")
    public String delete(@RequestParam("pageNo")Integer pageNo,@PathVariable("id") Integer id,Model model){
        boolean suc=newsDetailService.delete(id);
        model.addAttribute("deleteFlag",suc);
        PageHelper.startPage(pageNo, 5);
        List<NewsDetail> list=newsDetailService.query5();
        PageInfo<NewsDetail> page=new PageInfo<NewsDetail> (list);
        model.addAttribute("page",page);
        model.addAttribute("news",list);
        return "behind/bnews";
    }
    @RequestMapping("/news/update/{id}")
    public  String queryById(@PathVariable("id")Integer id,Model model){
        NewsDetail newsDetail=newsDetailService.queryById(id);
        model.addAttribute("news",newsDetail);
        model.addAttribute("id",id);

        return "behind/updatenews";
    }

    @RequestMapping("/news/updateTo")
    public java.lang.String update(@RequestParam("id")Integer id,@RequestParam("title")String title,@RequestParam("content")String content,@RequestParam("newsType")String newsType, Model model){
        boolean suc=newsDetailService.update(id,title,content,newsType);
        PageHelper.startPage(1, 5);
        List<NewsDetail> list=newsDetailService.query5();
        PageInfo<NewsDetail> page=new PageInfo<NewsDetail> (list);
        model.addAttribute("page",page);
        model.addAttribute("news",list);
        return "behind/bnews";
    }


}
