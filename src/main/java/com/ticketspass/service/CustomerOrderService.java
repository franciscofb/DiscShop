package com.ticketspass.service;

import com.ticketspass.model.CustomerOrder;

/**
 * Created by FFB on 09/05/2018.
 */
public interface CustomerOrderService {

    void addCustomerOrder(CustomerOrder customerOrder);

    double getCustomerOrderGrandTotal(int cartId);
}
