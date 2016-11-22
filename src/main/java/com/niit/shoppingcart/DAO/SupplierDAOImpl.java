package com.niit.shoppingcart.DAO;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingcart.model.Supplier;

@Repository
public class SupplierDAOImpl implements SupplierDAO {
	

	@Autowired 
	private SessionFactory sessionFactory;
	
	public SupplierDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public Boolean saveOrUpdate(Supplier supplier) {
		
		try{
			sessionFactory.getCurrentSession().saveOrUpdate(supplier);
			}catch(Exception e)
			
			{
				e.printStackTrace();
				return false;
			}
			return true;
	}

	@Transactional
	public Boolean delete(Supplier supplier) {
		try{
			sessionFactory.getCurrentSession().delete(supplier);
			}catch(Exception e)
			{
				e.printStackTrace();
				return false;
			}
			return true;
	}

	@Transactional
	public Supplier get(int id) {
		String hql = "from"+" Supplier"+" where id=" +id;
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Supplier> listSupplier = (List<Supplier>) query.list();
		if (listSupplier != null && !listSupplier.isEmpty()) {
			return listSupplier.get(0);
		}
		
		return null;
	}
	
		@SuppressWarnings("deprecation")
		@Transactional
	  public List<Supplier> list(){
			@SuppressWarnings("unchecked")
			List<Supplier> listSupplier = (List<Supplier>)
			sessionFactory.getCurrentSession()
			.createCriteria(Supplier.class)
			.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
			return listSupplier;
	}

		}
