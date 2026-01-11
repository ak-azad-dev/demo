package com.example.demo.repository;

import com.example.demo.model.Employee;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * @author : AzadDevPC
 * @mailto : azadsmc@gmail.com
 * @created_At : 1/11/2026 Sun
 **/

@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Long> {
}
