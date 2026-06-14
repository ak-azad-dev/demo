package com.example.demo.repository;

import com.example.demo.dto.CustomerDTO;
import com.example.demo.model.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, Long> {

    @Query(
        "SELECT c FROM Customer c"
    )
    List<Customer> getAllCustomer();

    @Query(
            "SELECT C FROM Customer C WHERE C.id =:customerId"
    )
    Customer getCustomerDetailsById(@Param("customerId") Long id);

    @Modifying
    @Query(
            nativeQuery = true,
            value = "DELETE FROM customers WHERE customer_id = :customer_Id"
    )
    void  deleteCustomerByCustomerId(@Param("customer_Id") Long customerId);
}
