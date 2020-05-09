package com.jimmy.controller;

import com.github.pagehelper.PageInfo;
import com.jimmy.domain.UGoods;
import com.jimmy.domain.UGoodsType;
import com.jimmy.service.IUGoodsService;
import com.jimmy.service.IUGoodsTypeService;
import com.jimmy.utils.ImageUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/goods")
public class GoodsController {

    @Autowired
    private IUGoodsService goodsService;
    @Autowired
    private IUGoodsTypeService typeService;

    @RequestMapping("/")
    public ModelAndView getAll(@RequestParam(name = "page", defaultValue = "1") Integer page) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        List<UGoods> list = goodsService.getAll(page);
        PageInfo pageInfo = new PageInfo(list);

        modelAndView.addObject("typeList", getGoodsType());
        modelAndView.addObject("goodsList", pageInfo);
        modelAndView.setViewName("/goods");

        return modelAndView;
    }

    @RequestMapping("/search")
    public ModelAndView getSearch(@RequestParam("text") String text, @RequestParam(name = "page", defaultValue = "1") Integer page) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        List<UGoods> list = goodsService.getSearch(text, page);
        PageInfo pageInfo = new PageInfo(list);

        modelAndView.addObject("typeList", getGoodsType());
        modelAndView.addObject("goodsList", pageInfo);
        modelAndView.setViewName("/goods");

        return modelAndView;
    }

/*
    @RequestMapping("/detail")
    public ModelAndView getById(@RequestParam("id")Integer id) throws Exception{
        ModelAndView modelAndView = new ModelAndView();
        UGoods goods = goodsService.getById(id);

        modelAndView.addObject("typeList", getGoodsType());
        modelAndView.addObject("goodsList", goods);
        modelAndView.setViewName("goods");

        return modelAndView;
    }
*/

    @ResponseBody
    @RequestMapping("/doAddGoods")
    public void doAddGoods(UGoods goods, @RequestParam("img_url") MultipartFile img, @RequestParam("content_img_url") MultipartFile content, HttpServletRequest request) throws Exception {
        String realPath = request.getSession().getServletContext().getRealPath("/img");
        String imgUrl = img.getOriginalFilename();
        String contentUrl = content.getOriginalFilename();

        String imgExtension = imgUrl.substring(imgUrl.indexOf(".") + 1);
        String contentExtension = contentUrl.substring(contentUrl.indexOf(".") + 1);

        String newImgName = UUID.randomUUID().toString() + "." + imgExtension;
        String newContentName = UUID.randomUUID().toString() + "." + contentExtension;

        File imgFile = new File(realPath, newImgName);
        File contentFile = new File(realPath, newContentName);

        img.transferTo(imgFile);
        content.transferTo(contentFile);
        String bigImgName = ImageUtils.imageChange(realPath, newImgName, 365, 365);
        System.out.println(bigImgName);

        goods.setBig_img(bigImgName);
        goods.setThumb_img(newImgName);
        goods.setContent_img(newContentName);

        if (goods.getId() == null) {
            goods.setDate(new Date());
        }

        goodsService.saveOrUpdate(goods);
    }

    @RequestMapping("/type")
    public ModelAndView getByTypeId(@RequestParam("typeid") Integer id, @RequestParam(name = "page", defaultValue = "1") Integer page) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        List<UGoods> list = goodsService.getByTypeId(id, page);
        PageInfo pageInfo = new PageInfo(list);

        modelAndView.addObject("typeList", getGoodsType());
        modelAndView.addObject("goodsList", pageInfo);
        modelAndView.setViewName("/goods");

        return modelAndView;
    }

    private List<List<UGoodsType>> getGoodsType() throws Exception {
        List<UGoodsType> all = typeService.getAll();
        List<List<UGoodsType>> list = new ArrayList<>();

        for(int page = 0; page < getPageMax(all.size(), 8); page++) {
            List<UGoodsType> goodsTypes = new ArrayList<>();
            for (int i = page * 8; i < (page+1)* 8; i++) {
                if(all.size() <= i)
                    break;
                if(all.get(i) != null){
                    goodsTypes.add(all.get(i));
                }
            }
            list.add(goodsTypes);
        }

        return list;
    }

    private Integer getPageMax(Integer size, Integer step) throws Exception{
        int pagemax = 0;
        pagemax = size / step;
        if(size % step != 0)
            pagemax += 1;

        return pagemax;
    }
}
