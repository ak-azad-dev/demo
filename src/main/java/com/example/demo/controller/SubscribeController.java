package com.example.demo.controller;

import com.example.demo.model.Employee;
import com.example.demo.model.Subscribe;
import com.example.demo.repository.SubscribeRepository;
import com.example.demo.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/subscribe")
public class SubscribeController {

    @Autowired
    private SubscribeRepository subscribeService;

    @GetMapping("")
    public String list(Model model){
        model.addAttribute("subscribe", subscribeService.findAll());
        return "subscribe";
    }

    @GetMapping("/new")
    public String createForm(Model model){
        model.addAttribute("subscribe", null);
        return "subscribe-form";
    }

    @PostMapping("/save")
    public String save(Subscribe subscribe){
        subscribeService.save(subscribe);
        return "redirect:/subscribe";
    }

}
