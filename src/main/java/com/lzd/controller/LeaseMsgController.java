package com.lzd.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lzd.pojo.LeaseMsg;
import com.lzd.service.LeaseMsgService;
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
public class LeaseMsgController {
    @Autowired
    private LeaseMsgService leaseMsgService;

    @RequestMapping("/lease")
    public String main(@RequestParam(required = true,defaultValue = "1")Integer pageNo, @RequestParam(required = false,defaultValue = "10")Integer pageSize,Model model){
        PageHelper.startPage(pageNo, pageSize);
        List<LeaseMsg> list=leaseMsgService.queryAll();
        PageInfo<LeaseMsg> page=new PageInfo<LeaseMsg> (list);
        model.addAttribute("page",page);
        model.addAttribute("lease",list);
        return "behind/leasemsg";
    }
    @RequestMapping("/lease/deal/{id}")
    public String deal(@PathVariable("id")Integer id,Model model){
        LeaseMsg leaseMsg=leaseMsgService.queryById(id);
        model.addAttribute("lease",leaseMsg);
        return "behind/dealmsg";
    }
    @RequestMapping("/lease/update/{id}")
    public  String update(@PathVariable("id")Integer id,Model model){
        boolean suc=leaseMsgService.update(id);
        List<LeaseMsg> list=leaseMsgService.queryAll();
        model.addAttribute("lease",list);
        return "behind/leasemsg";

    }
    @RequestMapping("/lease/delete/{id}")
    public String delete(@PathVariable("id")Integer id,Model model){
        boolean suc=leaseMsgService.delete(id);
        List<LeaseMsg> list=leaseMsgService.queryAll();
        model.addAttribute("lease",list);
        return "behind/leasemsg";
    }

    @RequestMapping("/front/lease")
    public String query(){
        return "front/leasecar";
    }
    @RequestMapping("/front/addlease")
    public String add(LeaseMsg leaseMsg,Model model){
        leaseMsg.setCreatedate(new Date());
        boolean suc=leaseMsgService.add(leaseMsg);
        model.addAttribute("result" ,suc);
        return "front/leasecar";
    }
}
