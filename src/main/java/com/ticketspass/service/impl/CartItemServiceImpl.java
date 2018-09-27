package com.ticketspass.service.impl;

import com.ticketspass.dao.CartItemDao;
import com.ticketspass.model.Cart;
import com.ticketspass.model.CartItem;
import com.ticketspass.service.CartItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *   Created by FFB on 09/05/2018.
 */

@Service
public class CartItemServiceImpl implements CartItemService{

    @Autowired
    private CartItemDao cartItemDao;

    public void addCartItem(CartItem cartItem) {
        cartItemDao.addCartItem(cartItem);
    }

    public void removeCartItem(CartItem cartItem) {
        cartItemDao.removeCartItem(cartItem);
    }

    public void removeAllCartItems(Cart cart){
        cartItemDao.removeAllCartItems(cart);
    }

    public CartItem getCartItemByProductId (int productId) {
        return cartItemDao.getCartItemByProductId(productId);
    }
}
