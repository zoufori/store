package com.jimmy.dao;

import com.jimmy.domain.UComment;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface IUCommentDao {

    @Select("select * from u_comment")
    List<UComment> getAll() throws Exception;

    @Select("select * from u_comment where id = #{id}")
    UComment getById(Integer id) throws Exception;

    @Select("select * from u_comment where userid = #{userid}")
    List<UComment> getByUserId(Integer userid) throws Exception;

    @Select("select * from u_comment where goodsid = #{goodsid}")
    List<UComment> getByGoodsId(Integer goodsid) throws Exception;

    @Select("select * from u_comment where replyid = #{id}")
    UComment getByReplyid(Integer id) throws Exception;

    @Insert("insert into u_comment(userid, goodsid, content, date, replyid) values(#{userid}, #{goodsid}, #{content}, #{date}, #{replyid})")
    Integer addComment(UComment comment) throws Exception;

    @Delete("delete from u_comment where id = #{id}")
    Integer deleteComment(Integer id) throws Exception;
}
