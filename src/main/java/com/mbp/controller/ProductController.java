package com.mbp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {

    /*访问主页*/
    @RequestMapping("index")
    public String index(){
        return "product/productIndex";
    }

    /*访问主页*/
    @RequestMapping("product_details")
    public String product_details(){
        return "product/productDetails";
    }

    /*访问主页*/
    @RequestMapping("product_list")
    public String product_list(){
        return "product/productList";
    }
}
