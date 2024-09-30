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
			
			String query = "insert into products(Urname,PhoneName, PhoneQuan, WatchName, WatchQuan, BudsName, BudsQuan) values(?,?,?,?,?,?,?)";
			PreparedStatement ps = connection.prepareStatement(query);
			ps.setString(1, prod.getName());
			ps.setString(2, prod.getPhonename());
			ps.setString(3, prod.getPhonequantity());
			ps.setString(4, prod.getWatchname());
			ps.setString(5, prod.getWatchquantity());
			ps.setString(6, prod.getBudsname());
			ps.setString(7, prod.getBudsquantity());
			
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
				obj.setName(set.getString(2));
				obj.setPhonename(set.getString(3));
				obj.setPhonequantity(set.getString(4));
				obj.setWatchname(set.getString(5));
				obj.setWatchquantity(set.getString(6));
				obj.setBudsname(set.getString(7));
				obj.setBudsquantity(set.getString(8));
				products.add(obj);
			}
			if(connection != null) {
				connection.close();
			}
			return products;
		}
		public boolean edit(Products products) throws SQLException, ClassNotFoundException {
			connection  = ConnectionManager.getConnection();
			String query = "update products set Urname = ?,PhoneName = ?,PhoneQuan = ?,WatchName = ?, WatchQuan = ?, BudsName = ?, BudsQuan = ? where id = ?";
			PreparedStatement ps = connection.prepareStatement(query);
			ps.setString(1, products.getName());
			ps.setString(2, products.getPhonename());
			ps.setString(3, products.getPhonequantity());
			ps.setString(4, products.getWatchname());
			ps.setString(5, products.getWatchquantity());
			ps.setString(6, products.getBudsname());
			ps.setString(7, products.getBudsquantity());
			   ps.setInt(8, products.getId());			
			int count = ps.executeUpdate();
			if(count != 0) {
				return true;
			}else {
				return false;
			}
		}
}