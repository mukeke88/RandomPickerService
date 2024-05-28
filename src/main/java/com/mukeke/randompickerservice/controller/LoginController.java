package com.mukeke.randompickerservice.controller;

import com.mukeke.randompickerservice.entity.ResponseResult;
import com.mukeke.randompickerservice.entity.User;
import com.mukeke.randompickerservice.service.LoginServcie;
import com.mukeke.randompickerservice.util.JwtUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@RestController
public class LoginController {
    @Autowired
    private LoginServcie loginServcie;
    private final String USERNAME = "admin";
    private final String PASSWORD = "123123";
    @GetMapping("/")
    public String index() {
        return "redirect:/login";
    }
    @PostMapping("/user/login")
    public ResponseResult login(@RequestBody User user){
        //登录
        return loginServcie.login(user);
    }


    @GetMapping("/index")
    public String home() {
        return "index";
    }
}
