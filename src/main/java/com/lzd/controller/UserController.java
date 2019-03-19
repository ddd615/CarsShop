package com.lzd.controller;

import com.lzd.pojo.User;
import com.lzd.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import javax.servlet.http.HttpServletRequest;
@Controller
@RequestMapping("/app")
public class UserController {
    @Autowired
    private UserService userService;
    @RequestMapping(value = "/login", method= RequestMethod.POST)
    public String login(HttpServletRequest request, @RequestParam("name")String name, @RequestParam("password")String password, Model model){
        User user =userService.login(name,password);

        String a;
        if(user!=null){
            request.getSession().setAttribute("user",user);
         a="behind/index"; }
        else {
            a="front/index";
        }
        return a;
    }

}
