package com.jimmy.aop;

import com.jimmy.domain.UGoods;
import com.jimmy.service.IUGoodsService;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import java.util.Arrays;

@Component
@Aspect
public class GoodsAop {

    @Autowired
    private IUGoodsService goodsService;
    @Autowired
    private HttpServletRequest request;

    @After("execution(* com.jimmy.controller.GoodsDetailController.show(..))")
    public void doAfter(JoinPoint jp) throws Exception{
        /*Signature signature = jp.getSignature();
        MethodSignature methodSignature = (MethodSignature) signature;
        String[] parameterNames = methodSignature.getParameterNames();

        for (int i = 0; i < parameterNames.length; i++) {
            if(parameterNames[i].equals("id")){

            }
        }*/
        Integer id = (Integer)request.getAttribute("id");
        UGoods goods = goodsService.getById(id);

        goods.setClicked(goods.getClicked()+1);
    }

}
