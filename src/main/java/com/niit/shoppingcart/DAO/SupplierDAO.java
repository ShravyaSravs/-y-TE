package com.niit.shoppingcart.DAO;

import java.util.List;

import com.niit.shoppingcart.model.Supplier;

public interface SupplierDAO {

public Boolean saveOrUpdate(Supplier supplier);
	
	public Boolean delete(Supplier supplier);
	
	public Supplier get(int id);
	
	public List<Supplier> list();
}

