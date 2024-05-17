package com.mukeke.randompickerservice.controller;

import com.mukeke.randompickerservice.entity.User;
import com.mukeke.randompickerservice.util.JwtUtil;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@RestController
public class LoginController {
    private final String USERNAME = "admin";
    private final String PASSWORD = "123123";
    @GetMapping("/")
    public String index() {
        return "redirect:/login";
    }

    @GetMapping("/login")
    public User login(User user){
        if(USERNAME.equals(user.getUsername()) && PASSWORD.equals(user.getPassword())){
            //获取token
            user.setToken(JwtUtil.createToken());
            return user;
        }
        return null;
    }


    @GetMapping("/index")
    public String home() {
        return "index";
    }

    @GetMapping("/checkToken")
    public Boolean checkToken(HttpServletRequest request){
        String token = request.getHeader("token");
        return JwtUtil.checkToken(token);
    }
}
