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

@WebServlet("/editProduct")
public class EditProductServlet extends HttpServlet {
    private ProductService productService = new ProductService();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int productId = Integer.parseInt(request.getParameter("id"));

        Product productToEdit = productService.getProductById(productId);

        request.setAttribute("productToEdit", productToEdit);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/edit-product.jsp");
        dispatcher.forward(request, response);
    }
}

