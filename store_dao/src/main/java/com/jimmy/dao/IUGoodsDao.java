package com.jimmy.dao;

import com.jimmy.domain.UGoods;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface IUGoodsDao {

    @Select("select * from u_goods")
    List<UGoods> getAll() throws Exception;

    @Select("select * from u_goods where id = #{id}")
    UGoods getById(Integer id) throws Exception;

    @Select("select * from u_goods where name like #{name}")
    List<UGoods> getByName(String name) throws Exception;

    @Select("select * from u_goods where typeid = #{typeId}")
    List<UGoods> getByTypeId(Integer typeId) throws Exception;

    @Select("select * from u_goods where name like #{text} or u_goods.desc like #{text} or content like #{text}")
    List<UGoods> getSearch(String text) throws Exception;

    @Select("select * from u_goods where order by clicked desc limit 8")
    List<UGoods> getHotGoods() throws Exception;

    @Select("select * from u_goods where is_recommend = 1")
    List<UGoods> getRecommendedGoods() throws Exception;

    @Insert("insert into u_goods" +
            "(name, typeid, discount, price, `desc`, thumb_img, big_img, content_img, content, commentid, inventory, clicked, address, date, is_recommend, month_sellid)" +
            "values" +
            "(#{name}, #{typeid}, #{discount}, #{price}, #{desc}, #{thumb_img}, #{big_img}, #{content_img}, #{content}, #{commentid}, #{inventory}, #{clicked}, #{address}, #{date}, #{is_recommend}, #{month_sellid})")
    Integer save(UGoods goods) throws Exception;

    @Update("update u_goods set " +
            "name = #{name}," +
            "typeid = #{typeid}," +
            "discount = #{discount}," +
            "price = #{price}," +
            "`desc` = #{desc}," +
            "thumb_img = #{thumb_img}," +
            "big_img = #{big_img}," +
            "content_img = #{content_img}," +
            "content = #{content}," +
            "commentid = #{commentid}," +
            "inventory = #{inventory}," +
            "clicked = #{clicked}," +
            "address = #{address}," +
            "date = #{date}," +
            "is_recommend = #{is_recommend}," +
            "month_sellid = #{month_sellid}" +
            " where id = #{id}")
    Integer update(UGoods goods) throws Exception;
}
