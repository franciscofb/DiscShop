package com.ticketspass.dao;

import com.ticketspass.model.Product;

import java.util.List;

/**
 * Created by FFB on 09/05/2018.
 */
public interface ProductDao {

    List<Product> getProductList();

    Product getProductById(int id);

    void addProduct(Product product);

    void editProduct(Product product);

    void deleteProduct(Product product);
}
