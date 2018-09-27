package com.ticketspass.dao;

import com.ticketspass.model.Cart;

import java.io.IOException;

/**
 * Created by FFB on 09/05/2018.
 */
public interface CartDao {

    Cart getCartById (int cartId);

    Cart validate(int cartId) throws IOException;

    void update(Cart cart);
}
