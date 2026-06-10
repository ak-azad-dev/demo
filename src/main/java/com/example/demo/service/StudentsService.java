package com.example.demo.service;

import com.example.demo.model.Customer;
import com.example.demo.model.Employee;
import com.example.demo.model.Students;
import com.example.demo.repository.CustomerRepository;
import com.example.demo.repository.EmployeeRepository;
import com.example.demo.repository.StudentsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author : AzadDevPC
 * @mailto : azadsmc@gmail.com
 * @created_At : 1/11/2026 Sun
 **/

@Service
public class StudentsService {

    @Autowired
    private StudentsRepository repository;


    public List<Students> findAll() {
        return repository.findAll();
    }


    public Students findById(Long id) {
        return repository.findById(id).orElse(null);
    }


    public void save(Students students) {
        repository.save(students);
    }


    public void delete(Long id) {
        repository.deleteById(id);
    }
}

