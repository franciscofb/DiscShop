package com.ticketspass.service;

import com.ticketspass.model.Product;

import java.util.List;

/**
 * Created by FFB on 09/05/2018.
 */
public interface ProductService {

    List<Product> getProductList();

    Product getProductById(int id);

    void addProduct(Product product);

    void editProduct(Product product);

    void deleteProduct(Product product);
}
