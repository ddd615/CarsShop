package com.lzd.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lzd.pojo.Part;
import com.lzd.service.PartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/app")
public class PartController {
    @Autowired
    private PartService partService;
    @RequestMapping("/part")
    public String main(@RequestParam(required = true,defaultValue = "1")Integer pageNo, @RequestParam(required = false,defaultValue = "5")Integer pageSize,Model model){
        PageHelper.startPage(pageNo, pageSize);
        List<Part> list=partService.queryAll();
        PageInfo<Part> page=new PageInfo<Part> (list);
        model.addAttribute("page",page);
        model.addAttribute("part",list);
        return "behind/part";
    }
    @RequestMapping("/part/queryByWord")
    public String query(@RequestParam("word")String word,@RequestParam("wordType")String wordType,Model model){
        int wt=Integer.parseInt(wordType);
        model.addAttribute("word",word);
        if(wt==1){
            List<Part> list=partService.queryByName(word);
            model.addAttribute("part",list);
        }
        if(wt==2){
            List<Part> list=partService.queryByNum(word);
            model.addAttribute("part",list);
        }
        if(wt==3){
            List<Part> list=partService.queryByType(word);
            model.addAttribute("part",list);
        }
        return "behind/part";
    }
    @RequestMapping("/part/add")
    public String add(Part part,Model model){
        boolean suc=partService.add(part);
        PageHelper.startPage(1, 5);
        List<Part> list=partService.queryAll();
        PageInfo<Part> page=new PageInfo<Part> (list);
        model.addAttribute("page",page);
        model.addAttribute("part",list);
        return "behind/part";
    }
    @RequestMapping("/part/update/{id}")
    public String deal(@PathVariable("id")Integer id,Model model){
        Part part=partService.queryById(id);
        model.addAttribute("part",part);
        return"behind/updatepart";
    }
    @RequestMapping("/part/updateTo")
    public String update(Part part,Model model){
        boolean suc=partService.update(part);
        PageHelper.startPage(1, 5);
        List<Part> list=partService.queryAll();
        PageInfo<Part> page=new PageInfo<Part> (list);
        model.addAttribute("page",page);
        model.addAttribute("part",list);
        return "behind/part";
    }
    @RequestMapping("/part/delete/{id}")
    public String delete(@RequestParam("pageNo")Integer pageNo,@PathVariable("id")Integer id,Model model){
        boolean suc=partService.delete(id);
        PageHelper.startPage(pageNo, 5);
        List<Part> list=partService.queryAll();
        PageInfo<Part> page=new PageInfo<Part> (list);
        model.addAttribute("page",page);
        model.addAttribute("part",list);
        return "behind/part";
    }
    @RequestMapping("/part/front")
    public String frontQuery(@RequestParam("word")String word,@RequestParam("wordType")String wordType,Model model){
        int wt=Integer.parseInt(wordType);
        model.addAttribute("word",word);
        if(wt==1){
            List<Part> list=partService.queryByName(word);
            model.addAttribute("part",list);
        }
        if(wt==2){
            List<Part> list=partService.queryByNum(word);
            model.addAttribute("part",list);
        }
        if(wt==3){
            List<Part> list=partService.queryByType(word);
            model.addAttribute("part",list);
        }
        return "front/fuwu";
    }

}
