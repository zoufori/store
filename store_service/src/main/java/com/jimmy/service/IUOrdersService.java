package com.jimmy.service;

import com.jimmy.domain.UOrders;
import org.springframework.core.annotation.Order;

import java.util.List;

public interface IUOrdersService {

    Integer save(UOrders orders) throws Exception;

    Integer paid(Integer id) throws Exception;

    Integer receive(Integer id) throws Exception;

    Integer cancel(Integer id) throws Exception;

    Integer changeCount(Integer count, Integer orderid) throws Exception;

    UOrders findById(Integer id) throws Exception;

    List<UOrders> findByUserIdAndInCart(Integer userid) throws Exception;

    List<UOrders> findByUserIdPaidHistory(Integer userid) throws Exception;

    List<UOrders> findByUserid(Integer userid) throws Exception;
}
