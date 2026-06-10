package com.example.demo.Mapper;

import com.example.demo.dto.CustomerDTO;
import com.example.demo.model.Customer;

public class CustomerMapper {

    public static CustomerDTO EntityToResponse(Customer customer){
        CustomerDTO customerDTO = new CustomerDTO();
        customerDTO.setName(customer.getName());
        customerDTO.setEmail(customer.getEmail());
        return customerDTO;
    }
}
