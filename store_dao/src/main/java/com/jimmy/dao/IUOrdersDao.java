package com.jimmy.dao;

import com.jimmy.domain.UOrders;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.core.annotation.Order;

import java.util.Date;
import java.util.List;

public interface IUOrdersDao {

    @Insert("insert into u_orders" +
            "(userid, goodsid, order_time, count, receive_time, is_cart, is_paid, is_cancel)" +
            "values" +
            "(#{usersid},#{goodsid},#{order_time},#{count},#{receive_time},#{is_cart},#{is_paid},#{is_cancel})")
    Integer save(UOrders orders) throws Exception;

    @Update("update u_orders set" +
            "is_cart = 0," +
            "is_paid = 1" +
            "where" +
            "id = #{id}")
    Integer paid(Integer id) throws Exception;

    @Update("update u_orders set" +
            "receive_time = #{receive_time}" +
            "where" +
            "id = #{id}")
    Integer receive(@Param("id") Integer id, @Param("receive_time")Date receive_time) throws Exception;

    @Update("update u_orders set" +
            "is_cancel = 1" +
            "where" +
            "id = #{id}")
    Integer cancel(Integer id) throws Exception;

    @Update("update u_orders set" +
            "count = #{count}" +
            "where" +
            "id = #{orderid}")
    Integer changeCount(@Param("count") Integer count, @Param("orderid") Integer orderid) throws Exception;

    @Select("select * from u_orders where id = #{id}")
    UOrders findById(Integer id) throws Exception;

    @Select("select * from u_orders where userid = #{userid} and is_cart = 1 and is_cancel = 0")
    List<UOrders> findByUserIdAndInCart(Integer userid) throws Exception;

    @Select("select * from u_orders where userid = #{userid} and is_paid = 1 and is_cancel = 0")
    List<UOrders> findByUserIdPaidHistory(Integer userid) throws Exception;

    @Select("select * from u_orders where userid = #{userid} and is_cancel = 0")
    List<UOrders> findByUserid(Integer userid) throws Exception;

}
