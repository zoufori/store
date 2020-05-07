package com.jimmy.service.impl;

import com.jimmy.dao.IUOrdersDao;
import com.jimmy.domain.UOrders;
import com.jimmy.service.IUOrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

@Transactional
@Service
public class UOrdersServiceImpl implements IUOrdersService {

    @Autowired
    private IUOrdersDao dao;

    @Override
    public Integer save(UOrders orders) throws Exception {
        return dao.save(orders);
    }

    @Override
    public Integer paid(Integer id) throws Exception {
        return dao.paid(id);
    }

    @Override
    public Integer receive(Integer id) throws Exception {
        return dao.receive(id, new Date());
    }

    @Override
    public Integer cancel(Integer id) throws Exception {
        return dao.cancel(id);
    }

    @Override
    public Integer changeCount(Integer count, Integer orderid) throws Exception {
        return dao.changeCount(count, orderid);
    }

    @Override
    public UOrders findById(Integer id) throws Exception {
        return dao.findById(id);
    }

    @Override
    public List<UOrders> findByUserIdAndInCart(Integer userid) throws Exception {
        return dao.findByUserIdAndInCart(userid);
    }

    @Override
    public List<UOrders> findByUserIdPaidHistory(Integer userid) throws Exception {
        return dao.findByUserIdPaidHistory(userid);
    }

    @Override
    public List<UOrders> findByUserid(Integer userid) throws Exception {
        return dao.findByUserid(userid);
    }
}
