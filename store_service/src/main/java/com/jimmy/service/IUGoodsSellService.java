package com.jimmy.service;

import com.jimmy.domain.UGoodsSell;

import java.util.List;

public interface IUGoodsSellService {

    UGoodsSell getSell(Integer goodsid, String date) throws Exception;

    Integer updateSell(Integer id, Integer sell) throws Exception;

    List<UGoodsSell> getByGoodsid(Integer goodsid) throws Exception;

    Integer saveSell(UGoodsSell goodsSell) throws Exception;
}
