package com.mbp.controller;

import com.mbp.entity.Brand;
import com.mbp.service.BrandService;
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



    /**
     * 页面初始化的加载
     * @param model
     * @param brandId
     * @return
     */
    @RequestMapping(value = "/findBrandAll",produces = "application/json;charset=utf-8")
    public String findAll(Model model,String brandId){
        //1.调查询商品方法
        List<Brand> brands = brandService.selectAll();
        //封装返回商品品牌
        model.addAttribute("brandList",brands);
        //跳转页面
        return "product/productIndex";
    }
}
