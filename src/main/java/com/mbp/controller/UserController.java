package com.mbp.controller;

import com.mbp.entity.Model;
import com.mbp.entity.PersonAccount;
import com.mbp.entity.Register;
import com.mbp.service.UserService;
import org.apache.commons.logging.LogFactory;
import org.apache.log4j.Logger;
import org.apache.log4j.spi.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * @author 邓宁
 * @date Created in 15:55 2019/12/25
 */
@Controller
@RequestMapping("/user")
public class UserController {

    private final Logger logger = Logger.getLogger(UserController.class);

    @Autowired
    private UserService userService;


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

    @RequestMapping("/toUserAddress")
    public String goUserAddress(){
        return "user/userAddress";
    }

    @RequestMapping("/login")
    public String userLogin(@RequestBody PersonAccount personAccount, HttpSession session){
        logger.error("error");
        PersonAccount account = userService.userLogin(personAccount);
        if (account != null){
            return "user/userIndex";
        }
        else {
            session.setAttribute("error","账号或密码错误!");
            return "user/login";
        }
    }

    @RequestMapping("/register")
    public String UserRegister(@RequestBody Register register){
        int result = userService.userRegister(register.getPersonAccount());
        if (result == 1){
            return "user/login";
        }
        else {
            return "user/register";
        }
    }
}
