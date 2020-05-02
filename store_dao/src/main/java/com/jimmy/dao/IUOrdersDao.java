package com.jimmy.dao;

import com.jimmy.domain.UOrders;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

public interface IUOrdersDao {

    @Insert("insert into u_orders" +
            "(userid, goodsid, order_time, receive_time, is_cart, is_paid, is_cancel)" +
            "values" +
            "(#{userid},#{goodsid},#{order_time},#{receive_time},#{is_cart},#{is_paid},#{is_cancel})")
    Integer save(UOrders orders) throws Exception;

}
