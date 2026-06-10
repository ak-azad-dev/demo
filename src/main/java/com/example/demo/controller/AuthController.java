package com.example.demo.controller;

import com.example.demo.model.User;
import com.example.demo.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

/**
 * @author : AzadDevPC
 * @mailto : azadsmc@gmail.com
 * @created_At : 1/8/2026 Thu
 **/

@Controller
public class AuthController {

    @Autowired
    private UserRepository repo;

    @Autowired
    private PasswordEncoder encoder;

    @GetMapping("")
    public String defaultPage() {
        return "login";
    }

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @GetMapping("/signup")
    public String signup() {
        return "signup";
    }

    @PostMapping("/signup")
    public String register(User user) {
        user.setPassword(encoder.encode(user.getPassword()));
        repo.save(user);
        return "redirect:/login";
    }

    @GetMapping("/index")
    public String index() {
        return "index";
    }
}
