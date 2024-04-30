package com.mukeke.randompickerservice.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController
public class LoginController {
    @GetMapping("/")
    public String index() {
        return "redirect:/login";
    }

    @GetMapping("/login")
    public String login() {
        System.out.println("GET /login");
        return "login";
    }

    @PostMapping("/login")
    public ResponseEntity<Map<String, Object>> handleLogin(@RequestParam String username, @RequestParam String password) {
        System.out.println("POST /login");
        Map<String, Object> response = new HashMap<>();
        if ("Jim".equals(username) && "plays".equals(password)) {
            response.put("redirect", "index"); // Redirect to home if credentials are correct
            return ResponseEntity.ok(response);
        } else {
            response.put("error", true);
            response.put("message", "Invalid username or password");
            return ResponseEntity.badRequest().body(response); // Stay on login page and show error
        }
    }

    @GetMapping("/index")
    public String home() {
        return "index";
    }
}
