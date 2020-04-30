package com.jimmy.service.impl;

import com.jimmy.dao.IUCommentDao;
import com.jimmy.domain.UComment;
import com.jimmy.service.IUCommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class UCommentServiceImpl implements IUCommentService {

    @Autowired
    private IUCommentDao dao;

    @Override
    public List<UComment> findAll() throws Exception {
        return dao.getAll();
    }

    @Override
    public UComment findById(Integer id) throws Exception {
        return dao.getById(id);
    }

    @Override
    public UComment findByParentId(Integer id) throws Exception {
        return dao.getByReplyid(id);
    }

    @Override
    public Integer save(UComment comment) throws Exception {
        return dao.addComment(comment);
    }

    @Override
    public Integer delete(Integer id) throws Exception {
        return dao.deleteComment(id);
    }

    @Override
    public List<UComment> findByGoodsid(Integer id) throws Exception {
        return dao.getByGoodsId(id);
    }
}
