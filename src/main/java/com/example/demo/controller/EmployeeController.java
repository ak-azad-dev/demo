package com.example.demo.controller;

import com.example.demo.model.Employee;
import com.example.demo.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author : AzadDevPC
 * @mailto : azadsmc@gmail.com
 * @created_At : 1/11/2026 Sun
 **/

@Controller
@RequestMapping("/employees")
public class EmployeeController {

    @Autowired
    private EmployeeService employeeService;

    @GetMapping("")
    public String list(Model model){
        model.addAttribute("employees", employeeService.findAll());
        return "employees";
    }

    @GetMapping("/new")
    public String createForm(Model model){
        model.addAttribute("employee", null);
        return "employee-form";
    }

    @PostMapping("/save")
    public String save(Employee employee){
        employeeService.save(employee);
        return "redirect:/employees";
    }

}
