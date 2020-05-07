package com.jimmy.controller;

import com.jimmy.domain.UUsers;
import com.jimmy.service.IUUsersService;
import com.jimmy.utils.BCryptPasswordUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;

@Controller
@RequestMapping("/register")
public class RegisterController {

    @Autowired
    private IUUsersService service;

    @RequestMapping("/")
    public ModelAndView register() throws Exception{
        ModelAndView mv = new ModelAndView();

        mv.setViewName("register");
        return mv;
    }

    @RequestMapping("/doRegister")
    public String doRegister(UUsers users) throws Exception{
        users.setPassword(BCryptPasswordUtils.getEncoderPassword(users.getPassword()));
        users.setDate(new Date());
        users.setUsername(users.getEmail());
        users.setRole("USER");
        users.setGender(3);
        users.setMoney(0);
        users.setIs_ban(2);
        users.setHead_img("0d76022d-a7d7-4fa3-a08e-9af2f76ab79c.jpg");

        service.register(users);

        return "redirect:localhost:8080/store_web/login.jsp";
    }

}
