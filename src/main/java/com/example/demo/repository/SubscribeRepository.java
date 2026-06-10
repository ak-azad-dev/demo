package com.example.demo.repository;

import com.example.demo.model.Employee;
import com.example.demo.model.Subscribe;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * @author : AzadDevPC
 * @mailto : azadsmc@gmail.com
 * @created_At : 1/11/2026 Sun
 **/

@Repository
public interface SubscribeRepository extends JpaRepository<Subscribe, Long> {
}
