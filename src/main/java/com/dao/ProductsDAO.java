package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.model.Products;

public class ProductsDAO {
		Connection connection = null;

		public boolean save(Products prod) throws ClassNotFoundException, SQLException {
			connection = ConnectionManager.getConnection();
			
			String query = "insert into products(prodtype,location, mdate, prodname, prodprice) values(?,?,?,?,?)";
			PreparedStatement ps = connection.prepareStatement(query);
			ps.setString(1, prod.getProdtype());
			ps.setString(2, prod.getLocation());
			ps.setString(3, prod.getMdate());
			ps.setString(4, prod.getProdname());
			ps.setString(5, prod.getProdprice());
			
			int count = ps.executeUpdate();
			
			if(count != 0 ) {
				return true;
			}
			else {
				return false;
			}
		}
		public void commit() throws SQLException {
			connection.commit();
			connection.close();
			
		}
		public void rollback() throws SQLException {
			connection.rollback();
			connection.close();
		}
		public List<Products> findAll() throws ClassNotFoundException, SQLException {
			Connection connection = ConnectionManager.getConnection();
			connection.setAutoCommit(true);
			String query = "select * from products";
			PreparedStatement ps = connection.prepareStatement(query);
			ResultSet set = ps.executeQuery();
			List<Products> products= new ArrayList<Products>();
			
			while(set.next()) {
				Products obj = new Products();
				obj.setId(set.getInt(1));
				obj.setProdtype(set.getString(2));
				obj.setLocation(set.getString(3));
				obj.setMdate(set.getString(4));
				obj.setProdname(set.getString(5));
				obj.setProdprice(set.getString(6));
				products.add(obj);
			}
			if(connection != null) {
				connection.close();
			}
			return products;
		}
		public boolean edit(Products products) throws SQLException, ClassNotFoundException {
			connection  = ConnectionManager.getConnection();
			String query = "update products set prodtype = ?,location = ?,mdate = ?,prodname = ?, prodprice = ? where id = ?";
			PreparedStatement ps = connection.prepareStatement(query);
			ps.setString(1, products.getProdtype());
			ps.setString(2, products.getLocation());
			ps.setString(3, products.getMdate());
			ps.setString(4, products.getProdname());
			ps.setString(5, products.getProdprice());
			   ps.setInt(6, products.getId());			
			int count = ps.executeUpdate();
			if(count != 0) {
				return true;
			}else {
				return false;
			}
		}
		public boolean deleteById(int id) throws SQLException, ClassNotFoundException {
			connection = ConnectionManager.getConnection();
			String query = "delete from products where id = ?";
			PreparedStatement ps = connection.prepareStatement(query);
			ps.setInt(1, id);
			int count = ps.executeUpdate();
			if(count != 0 ) {
				return true;
			}else {
			return false;
			}
		}
		public List<Products> findByName(String prodname) throws ClassNotFoundException, SQLException {
		    Connection connection = ConnectionManager.getConnection();
		    connection.setAutoCommit(true);
		    List<Products> productsList = new ArrayList<>();
	        try {
	            connection = ConnectionManager.getConnection();
	            String query = "SELECT * FROM products WHERE prodname LIKE ?";
	            PreparedStatement ps = connection.prepareStatement(query);
	            ps.setString(1, "%" + prodname + "%");
	            ResultSet rs = ps.executeQuery();

	            while (rs.next()) {
	                Products product = new Products();
	                product.setId(rs.getInt("id"));
	                product.setProdtype(rs.getString("prodtype"));
	                product.setLocation(rs.getString("location"));
	                product.setMdate(rs.getString("mdate"));
	                product.setProdname(rs.getString("prodname"));
	                product.setProdprice(rs.getString("prodprice"));
	                productsList.add(product);
	            }
	        } finally {
	            if (connection != null) {
	                connection.close();  // Ensure connection is closed
	            }
	        }
	        return productsList;
	    }
}