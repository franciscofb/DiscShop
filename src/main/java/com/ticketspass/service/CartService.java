package com.ticketspass.service;

import com.ticketspass.model.Cart;

/**
 * Created by FFB on 09/05/2018.
 */
public interface CartService {

    Cart getCartById (int cartId);

    void update(Cart cart);
}
