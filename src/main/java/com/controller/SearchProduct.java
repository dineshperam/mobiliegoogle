package com.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ProductsDAO;
import com.model.Products;

@WebServlet("/searchprod")
public class SearchProduct extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String prodname = request.getParameter("prodname");
        if (prodname == null || prodname.trim().isEmpty()) {
            prodname = "";  // Handle null/empty input
        }
        ProductsDAO dao = new ProductsDAO();
        try {
            List<Products> productsList = dao.findByName(prodname);  // Call the method on an instance
            request.setAttribute("products", productsList);
            RequestDispatcher dispatcher = request.getRequestDispatcher("findprod.jsp");
            dispatcher.forward(request, response);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}
