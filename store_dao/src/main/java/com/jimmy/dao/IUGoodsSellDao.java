package com.jimmy.dao;

import com.jimmy.domain.UGoodsSell;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface IUGoodsSellDao {

    @Select("select * from u_goodssell where goodsid = #{goodsid} and date like CONCAT('%', #{date}, '%')")
    UGoodsSell getSell(Integer goodsid, String date) throws Exception;

    @Update("update u_goodssell set sell = #{sell} where id = #{id}")
    Integer updateSell(Integer id, Integer sell) throws Exception;

    @Select("select * from u_goodssell where goodsid = #{goodsid}")
    List<UGoodsSell> getByGoodsid(Integer goodsid) throws Exception;

    @Insert("insert into u_goodssell" +
            "(goodsid, date, sell)" +
            "values(#{goodsid}, #{date}, #{sell})")
    Integer saveSell(UGoodsSell goodsSell) throws Exception;
}
