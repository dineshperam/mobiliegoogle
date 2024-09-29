package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

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
}