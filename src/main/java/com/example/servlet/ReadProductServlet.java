package com.example.servlet;

import java.io.*;
import java.util.List;

import com.example.Product;
import com.example.services.ProductService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "productsServlet", value = "/products")
public class ReadProductServlet extends HttpServlet {
    private ProductService productService;

    public ReadProductServlet() {
        this.productService = new ProductService();
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        try {
            List<Product> products = productService.getAllProducts();

            request.setAttribute("products", products);

            RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/products.jsp");
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Erreur lors du traitement de la requête");
        }
    }

    public void destroy() {
    }
}