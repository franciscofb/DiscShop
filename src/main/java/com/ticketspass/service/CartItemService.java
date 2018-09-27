package com.ticketspass.service;

import com.ticketspass.model.Cart;
import com.ticketspass.model.CartItem;

/**
 * Created by FFB on 09/05/2018.
 */
public interface CartItemService {

    void addCartItem(CartItem cartItem);

    void removeCartItem(CartItem cartItem);

    void removeAllCartItems(Cart cart);

    CartItem getCartItemByProductId (int productId);
}
