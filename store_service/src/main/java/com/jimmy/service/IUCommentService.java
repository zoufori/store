package com.jimmy.service;

import com.jimmy.domain.UComment;

import java.util.List;

public interface IUCommentService {

    List<UComment> findAll() throws Exception;

    UComment findById(Integer id) throws Exception;

    UComment findByParentId(Integer id) throws Exception;

    Integer save(UComment comment) throws Exception;

    Integer delete(Integer id) throws Exception;

    List<UComment> findByGoodsid(Integer id) throws Exception;
}
