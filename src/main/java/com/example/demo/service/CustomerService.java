package com.example.demo.service;

import com.example.demo.Mapper.CustomerMapper;
import com.example.demo.dto.CustomerDTO;
import com.example.demo.model.Customer;
import com.example.demo.repository.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class CustomerService {


    @Autowired
    private CustomerRepository customerRepository;


    public List<Customer> findAll() {
        return customerRepository.findAll();
    }


    public Customer findById(Long id) {
        return customerRepository.findById(id).orElse(null);
    }


    public void save(Customer customer) {
        customerRepository.save(customer);
    }


    public void delete(Long id) {
        customerRepository.deleteById(id);
    }

    public List<CustomerDTO> getCustomers(){
        return customerRepository.getAllCustomer()
                .stream()
                .map(CustomerMapper::EntityToResponse)
                .toList();
    }

    public Customer getCustomerDetailsById(Long id){
        return customerRepository.getCustomerDetailsById(id);
    }

    @Transactional
    public void deleteCustomerByCustomerId(Long id){
         customerRepository.deleteCustomerByCustomerId(id);
    }
}
