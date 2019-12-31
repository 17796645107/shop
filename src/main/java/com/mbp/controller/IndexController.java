package com.mbp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author 邓宁
 * @date Created in 15:09 2019/12/31
 */
@Controller
@RequestMapping("/index")
public class IndexController {

    @RequestMapping("/toNav")
    public String toNav(){
        return "common/nav";
    }

    @RequestMapping("/toHeader")
    public String toHeader(){
        return "common/header";
    }

    @RequestMapping("/toSearch")
    public String toSearch(){
        return "common/search";
    }

    @RequestMapping("/toFooter")
    public String toFooter(){
        return "common/footer";
    }
}
