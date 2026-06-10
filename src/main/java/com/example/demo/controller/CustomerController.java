package com.example.demo.controller;

import com.example.demo.dto.CustomerDTO;
import com.example.demo.model.Customer;
import com.example.demo.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/customers")
public class CustomerController {


    @Autowired
    private CustomerService customerService;


    // 1. This endpoint serves the HTML/JSP View page
    @GetMapping("")
    public String viewCustomerPage() {
        return "customers"; // This must match the name of your JSP file exactly
    }

    // 2. This endpoint provides the raw JSON data to your AJAX call
    @GetMapping("/list")
    @PreAuthorize("hasRole('ROLE_USER')")
    @ResponseBody
    public List<CustomerDTO> list() {
        return customerService.getCustomers();
    }


    @GetMapping("/new")
    public String createForm(Model model) {
        model.addAttribute("customer", new Customer());
        return "customer-form";
    }


    @PostMapping("/save")
    public String save(@ModelAttribute Customer customer) {
        customerService.save(customer);
        return "redirect:/customers";
    }


    @GetMapping("/edit/{id}")
    public String edit(@PathVariable Long id, Model model) {
        model.addAttribute("customer", customerService.findById(id));
        return "customer-form";
    }


    @GetMapping("/delete/{id}")
    public String delete(@PathVariable Long id) {
        customerService.delete(id);
        return "redirect:/customers";
    }
}
