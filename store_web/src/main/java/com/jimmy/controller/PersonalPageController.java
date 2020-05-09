package com.jimmy.controller;

import com.jimmy.domain.UGoods;
import com.jimmy.domain.UOrders;
import com.jimmy.domain.UUsers;
import com.jimmy.service.IUGoodsService;
import com.jimmy.service.IUOrdersService;
import com.jimmy.service.IUUsersService;
import com.jimmy.utils.BCryptPasswordUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.Date;
import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;


@Controller
@RequestMapping("/personal")
public class PersonalPageController {

    @Autowired
    private IUUsersService service;
    @Autowired
    private IUGoodsService goodsService;
    @Autowired
    private IUOrdersService ordersService;

    @RequestMapping("/personalMsg")
    public ModelAndView personalMsg() throws Exception{
        ModelAndView mv = new ModelAndView();
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if(principal instanceof UserDetails){
            String username = ((UserDetails) principal).getUsername();
            UUsers user = getUser(username);

            mv.addObject("user", user);
        }

        mv.setViewName("/personalMsg");
        return mv;
    }

    @RequestMapping("/")
    public ModelAndView personal() throws Exception {
        ModelAndView mv = new ModelAndView();
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if(principal instanceof UserDetails){
            String username = ((UserDetails) principal).getUsername();
            UUsers user = getUser(username);
            List<UOrders> ordersList = ordersService.findByUserid(user.getId());

            List<UOrders> collect = ordersList.parallelStream().peek(x -> {
                try {
                    UGoods byId = goodsService.getById(x.getGoodsid());
                    x.setGoods_thumb_img(byId.getThumb_img());
                    x.setGoods_name(byId.getName());
                    x.setGoods_discount(byId.getDiscount());
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }).collect(Collectors.toList());

            mv.addObject("orderList", collect);
            mv.addObject("user", user);
        }

        mv.setViewName("/personal");
        return mv;
    }

    @RequestMapping("/alterInfo")
    public ModelAndView alterInfo() throws Exception{
        ModelAndView mv = new ModelAndView();
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if(principal instanceof UserDetails){
            String username = ((UserDetails) principal).getUsername();
            UUsers user = getUser(username);
            mv.addObject("user", user);
        }

        mv.setViewName("/address");
        return mv;
    }

    @RequestMapping("/doAlterAddress")
    public String doAlterAddress(@RequestParam("address")String address) throws Exception{
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if(principal instanceof UserDetails) {
            String username = ((UserDetails) principal).getUsername();
            UUsers user = getUser(username);

            user.setAddress(address);
            service.saveOrUpdate(user);
        }
        return "redirect:personalMsg";
    }

    @RequestMapping("/doAlterInfo")
    public String doAlterInfo(UUsers users) throws Exception{
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if(principal instanceof UserDetails){
            String username = ((UserDetails) principal).getUsername();
            UUsers user = getUser(username);
            user.setEmail(users.getEmail());
            user.setGender(users.getGender());
            user.setTelephone(users.getTelephone());
            user.setUsername(users.getUsername());
            service.update(user);
        }
        return "redirect:personalMsg";
    }

    @RequestMapping("/doHeadImageChange")
    public String doHeadImageChange(@RequestParam("file")MultipartFile file, HttpServletRequest request) throws Exception{
        String realPath = request.getSession().getServletContext().getRealPath("/img");
        String originalFilename = file.getOriginalFilename();

        String extension = originalFilename.substring(originalFilename.indexOf("."));
        String newImgName = UUID.randomUUID().toString() + extension;

        File f = new File(realPath, newImgName);
        file.transferTo(f);

        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if(principal instanceof UserDetails){
            String username = ((UserDetails) principal).getUsername();
            UUsers user = getUser(username);

            user.setHead_img(newImgName);
            service.update(user);
        }

        return "redirect:personalMsg";
    }

    @ResponseBody
    @RequestMapping("/doAddUser")
    public void doAddUser(@RequestParam("img") MultipartFile img, UUsers users, HttpServletRequest request) throws Exception{
        users.setRole("USER");
        String realPath = request.getSession().getServletContext().getRealPath("/img");
        String imgUrl = img.getOriginalFilename();

        String imgExtension = imgUrl.substring(imgUrl.indexOf(".") + 1);

        String newImgName = UUID.randomUUID().toString() + "." + imgExtension;

        File imgFile = new File(realPath, newImgName);

        img.transferTo(imgFile);

        users.setHead_img(newImgName);

        users.setPassword(BCryptPasswordUtils.getEncoderPassword(users.getPassword()));
        service.saveOrUpdate(users);

    }

    private UUsers getUser(String username) throws Exception{
        if(username.contains("@"))
            return service.findByEmail(username);
        else
            return service.findByTelephone(username);
    }
}
