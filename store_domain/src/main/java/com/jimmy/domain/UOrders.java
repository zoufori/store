package com.jimmy.domain;


import com.jimmy.utils.DateUtils;

import java.util.Date;

public class UOrders {

    private Integer id;
    private Integer usersid;
    private Integer goodsid;
    private Double goods_discount;
    private String goods_thumb_img;
    private String goods_name;
    private Date order_time;
    private Integer count;
    private Date receive_time;
    private String orderTimeStr;
    private String receiveTimeStr;
    private Integer is_cart;
    private Integer is_paid;
    private Integer is_cancel;

    public Double getGoods_discount() {
        return goods_discount;
    }

    public void setGoods_discount(Double goods_discount) {
        this.goods_discount = goods_discount;
    }

    public String getGoods_thumb_img() {
        return goods_thumb_img;
    }

    public void setGoods_thumb_img(String goods_thumb_img) {
        this.goods_thumb_img = goods_thumb_img;
    }

    public String getGoods_name() {
        return goods_name;
    }

    public void setGoods_name(String goods_name) {
        this.goods_name = goods_name;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUsersid() {
        return usersid;
    }

    public void setUsersid(Integer usersid) {
        this.usersid = usersid;
    }

    public Integer getGoodsid() {
        return goodsid;
    }

    public void setGoodsid(Integer goodsid) {
        this.goodsid = goodsid;
    }

    public Date getOrder_time() {
        return order_time;
    }

    public void setOrder_time(Date order_time) {
        this.order_time = order_time;
    }

    public Date getReceive_time() {
        return receive_time;
    }

    public void setReceive_time(Date receive_time) {
        this.receive_time = receive_time;
    }

    public String getOrderTimeStr() {
        orderTimeStr = DateUtils.date2String(order_time, "yyyy-MM-dd");
        return orderTimeStr;
    }

    public void setOrderTimeStr(String orderTimeStr) {
        this.orderTimeStr = orderTimeStr;
    }

    public String getReceiveTimeStr() {
        return receiveTimeStr;
    }

    public void setReceiveTimeStr(String receiveTimeStr) {
        this.receiveTimeStr = receiveTimeStr;
    }

    public Integer getIs_cart() {
        return is_cart;
    }

    public void setIs_cart(Integer is_cart) {
        this.is_cart = is_cart;
    }

    public Integer getIs_paid() {
        return is_paid;
    }

    public void setIs_paid(Integer is_paid) {
        this.is_paid = is_paid;
    }

    public Integer getIs_cancel() {
        return is_cancel;
    }

    public void setIs_cancel(Integer is_cancel) {
        this.is_cancel = is_cancel;
    }
}
