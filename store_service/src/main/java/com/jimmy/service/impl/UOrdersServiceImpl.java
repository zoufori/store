package com.jimmy.service.impl;

import com.jimmy.dao.IUOrdersDao;
import com.jimmy.domain.UOrders;
import com.jimmy.service.IUOrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service
public class UOrdersServiceImpl implements IUOrdersService {

    @Autowired
    private IUOrdersDao dao;

    @Override
    public Integer save(UOrders orders) throws Exception {
        return dao.save(orders);
    }
}
