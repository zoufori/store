package com.jimmy.controller;

import com.jimmy.domain.UComment;
import com.jimmy.domain.UGoods;
import com.jimmy.domain.UOrders;
import com.jimmy.domain.UUsers;
import com.jimmy.service.IUCommentService;
import com.jimmy.service.IUGoodsService;
import com.jimmy.service.IUOrdersService;
import com.jimmy.service.IUUsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/goodsDetail")
public class GoodsDetailController {

    @Autowired
    private IUGoodsService service;
    @Autowired
    private IUCommentService commentService;
    @Autowired
    private IUOrdersService ordersService;
    @Autowired
    private IUUsersService usersService;

    @RequestMapping("/")
    public ModelAndView show(@RequestParam("goodsid")Integer id) throws Exception{
        ModelAndView mv = new ModelAndView();
        UGoods goods = service.getById(id);
        List<UComment> comments = commentService.findByGoodsid(id);

        mv.addObject("", comments);
        mv.addObject("", goods);
        mv.setViewName("");
        return mv;
    }

    @RequestMapping("/doAddCart")
    public void addCart(@RequestParam("goodsid") Integer id) throws Exception{
        UOrders orders = null;

        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if (principal instanceof UserDetails){
            String username = ((UserDetails) principal).getUsername();
            UUsers user = getUser(username);
            orders.setGoodsid(id);
            orders.setIs_cancel(0);
            orders.setIs_cart(1);
            orders.setIs_paid(0);
            orders.setOrder_time(new Date());
            orders.setUsersid(user.getId());
            ordersService.save(orders);
        }
    }

    private UUsers getUser(String username) throws Exception{
        if(username.contains("@"))
            return usersService.findByEmail(username);
        else
            return usersService.findByTelephone(username);
    }

}
