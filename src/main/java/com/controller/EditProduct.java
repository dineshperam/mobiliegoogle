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

@WebServlet("/editproduct")
public class EditProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Products products = new Products();
		products.setId(Integer.parseInt(request.getParameter("id")));
		products.setProdtype(request.getParameter("prodtype"));
		products.setLocation(request.getParameter("location"));
		products.setMdate(request.getParameter("mdate"));
		products.setProdname(request.getParameter("prodname"));
		products.setProdprice(request.getParameter("prodprice"));
		ProductsDAO dao = new ProductsDAO();
		
		try {
			boolean status = dao.edit(products);
			if(status) {
				dao.commit();
				request.setAttribute("status", "Products Updated successfully");
			}
			else {
				dao.rollback();
				request.setAttribute("status", "XXXXXXX Not updated.........");
			}
			RequestDispatcher dispatcher = request.getRequestDispatcher("editprod.jsp");
			dispatcher.forward(request, response);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

}
