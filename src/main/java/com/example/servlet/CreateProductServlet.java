package com.example.servlet;

import com.example.Product;
import com.example.services.ProductService;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/createProduct")
public class CreateProductServlet extends HttpServlet {
    private ProductService productService = new ProductService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String category = request.getParameter("category");
        double price = Double.parseDouble(request.getParameter("price"));
        String description = request.getParameter("description");
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        Product newProduct = new Product();
        newProduct.setName(name);
        newProduct.setPrice(price);
        newProduct.setDescription(description);
        newProduct.setCategory(category);
        newProduct.setQuantity(quantity);

        productService.addProduct(newProduct);

        response.sendRedirect(request.getContextPath() + "/products");
    }
}