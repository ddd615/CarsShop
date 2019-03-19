package com.lzd.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lzd.pojo.Order;
import com.lzd.service.OrderService;
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
public class OrderController {

    @Autowired
    private OrderService orderService;
    @RequestMapping("/order")
    public String main(@RequestParam(required = true,defaultValue = "1")Integer pageNo, @RequestParam(required = false,defaultValue = "5")Integer pageSize, Model model){

        PageHelper.startPage(pageNo, pageSize);
        List<Order> list=orderService.queryOrder();
        PageInfo<Order> page=new PageInfo<Order> (list);
        model.addAttribute("page",page);
        model.addAttribute("order",list);
        return "behind/order";
    }

    @RequestMapping("/order/queryByWord")
    public String queryByWord(@RequestParam("wordType")String wordType,@RequestParam("word")String word,Model model){
         int wt=Integer.parseInt(wordType);
         model.addAttribute("word",word);
         model.addAttribute("wordType",wordType);
        if (wt==1) {
            List<Order> list = orderService.queryById(word);
            model.addAttribute("order", list);
        }
        else if(wt==2){
            List<Order> list=orderService.queryByName(word);
            model.addAttribute("order", list);
        }
        else if(wt==3){
            List<Order> list=orderService.queryByLinkman(word);
            model.addAttribute("order", list);
        }

        return "behind/order";
    }
    @RequestMapping("/order/deal/{id}")
    public String deal(@PathVariable("id")Integer id,Model model){
        Order order = orderService.queryById1(id);
        model.addAttribute("order",order);
        return "behind/orderdeal";
    }

    @RequestMapping("/order/delete/{id}")
    public String delete(@PathVariable("id")Integer id,Model model){

        boolean suc=orderService.delete(id);
        PageHelper.startPage(1, 5);
        List<Order> list1=orderService.queryOrder();
        PageInfo<Order> page=new PageInfo<Order> (list1);
        model.addAttribute("order",list1);
        model.addAttribute("page",page);
        return "behind/order";

    }
    @RequestMapping("/order/dealTo/{id}")
    public String dealTo(@PathVariable("id")Integer id,Model model){
        boolean suc=orderService.deal(id);
        PageHelper.startPage(1, 5);
        List<Order> list1=orderService.queryOrder();
        PageInfo<Order> page=new PageInfo<Order> (list1);
        model.addAttribute("order",list1);
        model.addAttribute("page",page);
        return "behind/order";
    }
    @RequestMapping("/front/order")
    public String front(){
        return "front/order";
    }
    @RequestMapping("/order/add")
    public String add(Order order,Model model){
        order.setIssueDate(new Date());
        boolean suc=orderService.add(order);
        model.addAttribute("suc",suc);
        return "front/order";
    }
}
