package com.jimmy.aop;

import com.jimmy.domain.UGoods;
import com.jimmy.domain.UGoodsSell;
import com.jimmy.service.IUGoodsSellService;
import com.jimmy.service.IUGoodsService;
import com.jimmy.utils.DateUtils;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Method;
import java.lang.reflect.Parameter;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

@Component
@Aspect
public class GoodsAop {

    @Autowired
    private IUGoodsService goodsService;
    @Autowired
    private HttpServletRequest request;
    @Autowired
    private IUGoodsSellService goodsSellService;

    @Before("execution(* com.jimmy.controller.GoodsDetailController.show(..))")
    public void doBefore(JoinPoint jp) throws Exception{
        Object[] args = jp.getArgs();
        Integer id = (Integer)args[0];

        List<UGoodsSell> byGoodsid = goodsSellService.getByGoodsid(id);

        boolean r = byGoodsid.parallelStream().anyMatch(x ->
                DateUtils.date2String(new Date(), "yyyy-MM").equals(DateUtils.date2String(x.getDate(), "yyyy-MM"))
        );
        System.out.println("asdcasdcjashdbcajsdcas");
        if (!r){
            UGoodsSell goodsSell = new UGoodsSell();
            goodsSell.setDate(new Date());
            goodsSell.setGoodsid(id);
            goodsSell.setSell(0);
            System.out.println("asdcasdcjashdbcajsdcas++++++++++++++++++++++++");
            goodsSellService.saveSell(goodsSell);
        }
    }

    @After("execution(* com.jimmy.controller.GoodsDetailController.show(..))")
    public void doAfter(JoinPoint jp) throws Exception{
        /*Signature signature = jp.getSignature();
        MethodSignature methodSignature = (MethodSignature) signature;
        String[] parameterNames = methodSignature.getParameterNames();

        for (int i = 0; i < parameterNames.length; i++) {
            if(parameterNames[i].equals("id")){

            }
        }*/
        Object[] args = jp.getArgs();
        Integer id = (Integer) args[0];
        UGoods goods = goodsService.getById(id);

        goods.setClicked(goods.getClicked()+1);
        goodsService.saveOrUpdate(goods);
    }

}
