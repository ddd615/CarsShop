package com.lzd.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lzd.pojo.Replace;
import com.lzd.service.ReplaceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/app")
public class ReplaceController {
    @Autowired
    private ReplaceService replaceService;
    @RequestMapping("/replace")
    public String main(@RequestParam(required = true,defaultValue = "1")Integer pageNo, @RequestParam(required = false,defaultValue = "7")Integer pageSize,Model model){
        PageHelper.startPage(pageNo, pageSize);
        List<Replace> list=replaceService.queryAll();
        PageInfo<Replace> page=new PageInfo<Replace> (list);
        model.addAttribute("page",page);
        model.addAttribute("res",list);
        return "behind/replace";
    }
    @RequestMapping("/replace/deal/{id}")
    public String deal(@PathVariable("id")Integer id,Model model){
        Replace replace=replaceService.queryById(id);
        model.addAttribute("res",replace);
        return "behind/dealreplace";
    }
    @RequestMapping("/replace/update/{id}")
    public  String update(@PathVariable("id")Integer id,Model model){
        boolean suc=replaceService.update(id);
        List<Replace> list=replaceService.queryAll();
        model.addAttribute("res",list);
        return "behind/replace";
    }
    @RequestMapping("/replace/delete/{id}")
    public String delete(@PathVariable("id")Integer id,Model model){
        boolean suc=replaceService.delete(id);
        PageHelper.startPage(1, 7);
        List<Replace> list=replaceService.queryAll();
        PageInfo<Replace> page=new PageInfo<Replace> (list);
        model.addAttribute("page",page);
        model.addAttribute("res",list);
        return "behind/replace";
    }
    @RequestMapping("/replace/query")
    public String queryByName(@RequestParam("linkman")String linkman,Model model){
        PageHelper.startPage(1, 7);
        List<Replace> list=replaceService.queryByName(linkman);
        PageInfo<Replace> page=new PageInfo<Replace> (list);
        model.addAttribute("page",page);
        model.addAttribute("res",list);
        return "behind/replace";
    }
    @RequestMapping("/front/replace")
    public String front(){
        return "front/replace";
    }
    @RequestMapping("/replace/add")
    public String add(Replace replace){
        replace.setCreatedate(new Date());
        boolean suc=replaceService.add(replace);
        return "front/replace";
    }
}
