package com.example.servlet;

import com.example.Product;
import com.example.services.ProductService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/updateProduct")
public class UpdateProductServlet extends HttpServlet {
    private ProductService productService = new ProductService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int productId = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String category = request.getParameter("category");
        double price = Double.parseDouble(request.getParameter("price"));
        String description = request.getParameter("description");
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        Product existingProduct = productService.getProductById(productId);

        existingProduct.setName(name);
        existingProduct.setPrice(price);
        existingProduct.setDescription(description);
        existingProduct.setCategory(category);
        existingProduct.setQuantity(quantity);

        productService.updateProduct(existingProduct);

        response.sendRedirect(request.getContextPath() + "/products");
    }
}
