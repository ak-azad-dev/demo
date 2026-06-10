package com.example.demo.controller;

import com.example.demo.model.Students;
import com.example.demo.service.StudentsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

/**
 * @author : AzadDevPC
 * @mailto : azadsmc@gmail.com
 * @created_At : 1/11/2026 Sun
 **/
@Controller
@RequestMapping("/students")
public class StudentsController {

    @Autowired
    private StudentsService studentsService;

    @GetMapping("")
    public String list(Model model) {
        model.addAttribute("students", studentsService.findAll());
        return "students";
    }

    @GetMapping("/new")
    public String createForm(Model model) {
        model.addAttribute("students", new Students());
        return "students-form";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute Students students) {
        studentsService.save(students);
        return "redirect:/students";
    }

    @GetMapping("/edit/{id}")
    public String edit(@PathVariable Long id, Model model) {
        Students students = studentsService.findById(id);
        model.addAttribute("students", students);
        return "students-form";
    }
    @GetMapping("/delete/{id}")
    public String delete(@PathVariable Long id) {
        studentsService.delete(id);
        return "redirect:/students";
    }
}
