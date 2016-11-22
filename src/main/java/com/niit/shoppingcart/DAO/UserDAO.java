package com.niit.shoppingcart.DAO;

import java.util.List;

import com.niit.shoppingcart.model.User;

public interface UserDAO {
	
	public boolean saveOrUpdate(User user);
	public boolean delete(int id);
	public List<User> list();
	public User get(int id);
	public boolean isValidUser(String username , String password);
	public User get(String username);
}
