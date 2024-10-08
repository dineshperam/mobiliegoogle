package com.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ProductsDAO;
import com.model.Products;

@WebServlet("/saveproduct")
public class SaveProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Products prod = new Products();
		prod.setProdtype(request.getParameter("prodtype"));
		prod.setLocation(request.getParameter("location"));
		prod.setMdate(request.getParameter("mdate"));
		prod.setProdname(request.getParameter("prodname"));
		prod.setProdprice(request.getParameter("prodprice"));
		
		ProductsDAO dao = new ProductsDAO();
		
		try {
			boolean status = dao.save(prod);
			if(status) {
				dao.commit();
				request.setAttribute("status", "Product Added to the Cart");
			}
			else {
				dao.rollback();
				request.setAttribute("status", "XXXXX Not Added .......");
			}
			RequestDispatcher dispatcher = request.getRequestDispatcher("shop.jsp");
			dispatcher.forward(request, response);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

}
