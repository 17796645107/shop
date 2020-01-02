package com.mbp.controller;

import com.mbp.entity.Brand;
import com.mbp.entity.ProductInfo;
import com.mbp.service.BrandService;
import com.mbp.service.ModelService;
import com.mbp.service.ProductinfoService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping(value = "product")
public class ProductController {

    /**
     * 注入商品品牌业务层
     */
    @Autowired
    BrandService brandService;

    /**
     * 注入机型业务层
     */
    @Autowired
    ModelService modelService;

    /**
     * 注入商品信息
     */
    @Autowired
    ProductinfoService productinfoService;

    /**
     * 页面初始化的加载
     * @param model
     * @param brandId
     * @return
     */
    @RequestMapping(value = "/findBrandAll",produces = "application/json;charset=utf-8")
    public String findAll(Model model,String brandId){
        //1.查询品牌方法
        List<Brand> brands = brandService.selectAll();
        //2.查询机型
        List<com.mbp.entity.Model> models = modelService.selectModelByTime();
        //3.查询热销机型
        List<ProductInfo> productInfos = productinfoService.selectProductInfoByProductSaleNum();
        //4.查询更多单品
        List<ProductInfo> productInfosMore = productinfoService.selectProductInfoBy0Go10();
        //封装返回商品品牌
        model.addAttribute("brandList",brands);
        //封装返回机型品牌
        model.addAttribute("modelList",models);
        //热销单品
        model.addAttribute("productInfoList",productInfos);
        //更多单品
        model.addAttribute("productInfoMoreList",productInfosMore);
        System.out.println(models.size());
        //跳转页面
        return "product/productIndex";
    }
}
