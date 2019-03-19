package com.lzd.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lzd.pojo.Suggest;
import com.lzd.service.SuggestService;
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
public class SuggestController {
    @Autowired
    private SuggestService suggestService;
    @RequestMapping("/suggest")
    public String main(@RequestParam(required = true,defaultValue = "1")Integer pageNo, @RequestParam(required = false,defaultValue = "7")Integer pageSize, Model model){
        PageHelper.startPage(pageNo, pageSize);
        List<Suggest> list =suggestService.queryAll();
        PageInfo<Suggest> page=new PageInfo<Suggest> (list);
        model.addAttribute("page",page);
        model.addAttribute("suggest",list);
        return "behind/suggest";
    }
    @RequestMapping("/suggest/deal/{id}")
    public String deal(@RequestParam("pageNo")Integer pageNo,@PathVariable("id")Integer id,Model model){
        boolean suc=suggestService.update(id);
        PageHelper.startPage(pageNo, 7);
        List<Suggest> list =suggestService.queryAll();
        PageInfo<Suggest> page=new PageInfo<Suggest> (list);
        model.addAttribute("page",page);
        model.addAttribute("suggest",list);
        return "behind/suggest";
    }
    @RequestMapping("/suggest/delete/{id}")
    public String delete(@RequestParam("pageNo")Integer pageNo,@PathVariable("id") Integer id,Model model){
        boolean suc=suggestService.delete(id);
        PageHelper.startPage(pageNo, 7);
        List<Suggest> list =suggestService.queryAll();
        PageInfo<Suggest> page=new PageInfo<Suggest> (list);
        model.addAttribute("page",page);
        model.addAttribute("suggest",list);
        return "behind/suggest";
    }
    @RequestMapping("/front/fuwu")
    public String fuwu(){

        return "front/fuwu";
    }
    @RequestMapping("/suggest/add")
    public String add(Suggest suggest){
        suggest.setCreatedate(new Date());
        boolean suc=suggestService.add(suggest);
        return "front/fuwu";
    }
}
