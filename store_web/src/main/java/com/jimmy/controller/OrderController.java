package com.jimmy.controller;

import com.jimmy.domain.UGoods;
import com.jimmy.domain.UOrders;
import com.jimmy.domain.UUsers;
import com.jimmy.service.IUGoodsService;
import com.jimmy.service.IUOrdersService;
import com.jimmy.service.IUUsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/order")
public class OrderController {

    @Autowired
    private IUOrdersService ordersService;
    @Autowired
    private IUUsersService usersService;
    @Autowired
    private IUGoodsService goodsService;

    @RequestMapping("/")
    public ModelAndView order() throws Exception{
        ModelAndView mv = new ModelAndView();
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        List<String> orderTime = new ArrayList<>();


        if(principal instanceof UserDetails){
            UserDetails userDetails = (UserDetails)principal;
            UUsers user = getUser(userDetails.getUsername());

            List<UOrders> byUserid = ordersService.findByUserid(user.getId());
            List<UOrders> afterDateList = byUserid.parallelStream().filter(distinctByKey(UOrders::getOrderTimeStr)).collect(Collectors.toList());

            for (UOrders order:afterDateList) {
                orderTime.add(order.getOrderTimeStr());
            }

            byUserid.parallelStream().forEach(x -> {
                try {
                    UGoods byId = goodsService.getById(x.getGoodsid());
                    x.setGoods_discount(byId.getDiscount());
                    x.setGoods_name(byId.getName());
                    x.setGoods_thumb_img(byId.getThumb_img());
                } catch (Exception e) {
                    e.printStackTrace();
                }

            });

            mv.addObject("orderTimeList", orderTime);
            mv.addObject("orderList", byUserid);

        }
        mv.setViewName("orders");
        return mv;
    }

    @RequestMapping("/cart")
    public ModelAndView cart() throws Exception {
        ModelAndView mv = new ModelAndView();
        double total = 0;
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if (principal instanceof UserDetails) {
            UserDetails user = (UserDetails) principal;
            String username = user.getUsername();
            UUsers user1 = getUser(username);

            List<UOrders> byUserIdAndInCart = ordersService.findByUserIdAndInCart(user1.getId());
            List<UGoods> goods = byUserIdAndInCart.parallelStream().map(x -> {
                try {
                    return goodsService.getById(x.getGoodsid());
                } catch (Exception e) {
                    e.printStackTrace();
                }
                return null;
            }).collect(Collectors.toList());

            for (int i = 0; i < goods.size(); i++) {
                total += goods.get(i).getPrice() * byUserIdAndInCart.get(i).getCount();
            }

            mv.addObject("total", total);
            mv.addObject("goodsList", goods);
            mv.addObject("cartList", byUserIdAndInCart);
        }

        mv.setViewName("cart");
        return mv;
    }

    @RequestMapping("/doPay")
    public String doPay(Integer[] ids, Integer total) throws Exception {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        Integer id = 0;
        if (principal instanceof UserDetails) {
            UserDetails userDetails = (UserDetails) principal;
            UUsers user = getUser(userDetails.getUsername());

            id = user.getId();
        }

        Arrays.asList(ids).parallelStream().forEach(x -> {
            try {
                ordersService.paid(x);
            } catch (Exception e) {
                e.printStackTrace();
            }
        });
        usersService.detractMoney(total, id);

        return "redirect:cart";
    }

    @ResponseBody
    @RequestMapping("/addCount")
    public Integer addCount(Integer count, Integer orderid) throws Exception {
        Integer result = ordersService.changeCount(count + 1, orderid);
        return result > 0 ? count + 1 : count;
    }

    @ResponseBody
    @RequestMapping("/detractCount")
    public Integer detractCount(Integer count, Integer orderid) throws Exception {
        Integer result = ordersService.changeCount(count - 1, orderid);
        return result > 0 ? count - 1 : count;
    }

    private UUsers getUser(String username) throws Exception {
        if (username.contains("@"))
            return usersService.findByEmail(username);
        else
            return usersService.findByTelephone(username);
    }

    private static <T> Predicate<T> distinctByKey(Function<? super T, ?> keyExtractor) {
        Map<Object,Boolean> seen = new ConcurrentHashMap<>();
        return t -> seen.putIfAbsent(keyExtractor.apply(t), Boolean.TRUE) == null;
    }
}
