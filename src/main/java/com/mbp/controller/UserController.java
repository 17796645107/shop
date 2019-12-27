package com.mbp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author 邓宁
 * @date Created in 15:55 2019/12/25
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @RequestMapping("toLogin")
    public String goUserLogin(){
        return "user/login";
    }

    @RequestMapping("toRegister")
    public String goUserRegister(){
        return "user/register";
    }

    @RequestMapping("/toUserIndex")
    public String goUserIndex(){
        return "user/userIndex";
    }
}
