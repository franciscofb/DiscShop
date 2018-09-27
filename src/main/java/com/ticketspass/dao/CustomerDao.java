package com.ticketspass.dao;

import com.ticketspass.model.Customer;

import java.util.List;

/**
 * Created by FFB on 09/05/2018.
 */
public interface CustomerDao {

    void addCustomer (Customer customer);

    Customer getCustomerById (int customerId);

    List<Customer> getAllCustomers();

    Customer getCustomerByUsername (String username);

}
