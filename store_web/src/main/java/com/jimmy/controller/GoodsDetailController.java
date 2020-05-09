package com.jimmy.controller;

import com.jimmy.domain.*;
import com.jimmy.service.*;
import com.jimmy.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

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
    @Autowired
    private IUGoodsSellService goodsSellService;

    @RequestMapping("/")
    public ModelAndView show(@RequestParam("goodsid")Integer id) throws Exception{
        ModelAndView mv = new ModelAndView();
        UGoods goods = service.getById(id);
        List<UComment> comments = commentService.findByGoodsid(id);
        String date = DateUtils.date2String(new Date(), "yyyy-MM");
        UGoodsSell sell = goodsSellService.getSell(goods.getId(), date);

        comments = comments.parallelStream().peek(x -> {
            try {
                UUsers byId = usersService.findById(x.getUserid());
                x.setUser_head_img(byId.getHead_img());
                x.setUser_name(byId.getUsername());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }).collect(Collectors.toList());

        mv.addObject("sell", sell.getSell());
        mv.addObject("commentsList", comments);
        mv.addObject("goods", goods);
        mv.setViewName("/goodsDetail");
        return mv;
    }

    @RequestMapping("/doAddCart")
    public String addCart(@RequestParam("goodsid") Integer id, @RequestParam("count")Integer count) throws Exception{
        UOrders orders = new UOrders();

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
            orders.setCount(count);
            ordersService.save(orders);
        }

        return "redirect:http://localhost:8080/store_web/order/cart";
    }

    private UUsers getUser(String username) throws Exception{
        if(username.contains("@"))
            return usersService.findByEmail(username);
        else
            return usersService.findByTelephone(username);
    }

}
