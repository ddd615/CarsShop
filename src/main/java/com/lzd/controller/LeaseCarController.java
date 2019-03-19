package com.lzd.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lzd.pojo.LeaseCar;
import com.lzd.service.LeaseCarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import java.util.List;

@Controller
@RequestMapping("/app/car")
public class LeaseCarController {
    @Autowired
    private LeaseCarService leaseCarService;
    @RequestMapping("/lease")
    public String main(@RequestParam(required = true,defaultValue = "1")Integer pageNo, @RequestParam(required = false,defaultValue = "5")Integer pageSize, Model model){
        PageHelper.startPage(pageNo, pageSize);
        List<LeaseCar> list =leaseCarService.queryAll();
        PageInfo<LeaseCar> page=new PageInfo<LeaseCar> (list);
        model.addAttribute("page",page);
        model.addAttribute("cars",list);
        return "behind/leasecar";
    }
    @RequestMapping("/lease/add")
    public String add(LeaseCar leaseCar,Model model){
        boolean suc=leaseCarService.add(leaseCar);
        PageHelper.startPage(1, 5);
        List<LeaseCar> list =leaseCarService.queryAll();
        PageInfo<LeaseCar> page=new PageInfo<LeaseCar> (list);
        model.addAttribute("page",page);
        model.addAttribute("cars",list);
        return "behind/leasecar";
    }
    @RequestMapping("/lease/delete/{id}")
    public String delete(@RequestParam("pageNo")Integer pageNo,@PathVariable("id")Integer id,Model model){
        boolean suc=leaseCarService.delete(id);
        PageHelper.startPage(pageNo, 5);
        List<LeaseCar> list =leaseCarService.queryAll();
        PageInfo<LeaseCar> page=new PageInfo<LeaseCar> (list);
        model.addAttribute("page",page);
        model.addAttribute("cars",list);
        return "behind/leasecar";
    }
    @RequestMapping("/lease/update/{id}")
    public String update(@PathVariable("id")Integer id,Model model){
        LeaseCar leaseCar=leaseCarService.queryById(id);
        model.addAttribute("car",leaseCar);
        return "behind/updatelease";
    }
    @RequestMapping("/lease/updateTo")
    public String updateTo(LeaseCar leaseCar,Model model){
        boolean suc=leaseCarService.update(leaseCar);
        List<LeaseCar> list =leaseCarService.queryAll();
        model.addAttribute("cars",list);
        return "behind/leasecar";
    }
}
