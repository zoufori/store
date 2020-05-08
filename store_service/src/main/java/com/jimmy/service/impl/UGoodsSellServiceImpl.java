package com.jimmy.service.impl;

import com.jimmy.dao.IUGoodsSellDao;
import com.jimmy.domain.UGoodsSell;
import com.jimmy.service.IUGoodsSellService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class UGoodsSellServiceImpl implements IUGoodsSellService {

    @Autowired
    private IUGoodsSellDao dao;

    @Override
    public UGoodsSell getSell(Integer goodsid, String date) throws Exception {
        return dao.getSell(goodsid, date);
    }

    @Override
    public Integer updateSell(Integer id, Integer sell) throws Exception {
        return dao.updateSell(id, sell);
    }

    @Override
    public List<UGoodsSell> getByGoodsid(Integer goodsid) throws Exception {
        return dao.getByGoodsid(goodsid);
    }

    @Override
    public Integer saveSell(UGoodsSell goodsSell) throws Exception {
        return dao.saveSell(goodsSell);
    }
}
