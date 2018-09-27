package com.ticketspass.dao;

import com.ticketspass.model.Cart;
import com.ticketspass.model.CartItem;

/**
 * Created by FFB on 09/05/2018.
 */
public interface CartItemDao {

    void addCartItem(CartItem cartItem);

    void removeCartItem(CartItem cartItem);

    void removeAllCartItems(Cart cart);

    CartItem getCartItemByProductId (int productId);

}
