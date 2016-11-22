package com.niit.shoppingcart.DAO;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingcart.model.User;

@Repository("userDAO")
public class UserDAOImpl implements UserDAO {
	
	@Autowired 
	private SessionFactory sessionFactory;
	
	public UserDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public boolean saveOrUpdate(User user) {
		user.setEnabled(true);
		   user.setRole("ROLE_USER");
		sessionFactory.getCurrentSession().saveOrUpdate(user);
		return true;
	
	}

	@Transactional
	public boolean delete(int id) {
		User UserToDelete = new User();
		UserToDelete.setUserid(id);
		sessionFactory.getCurrentSession().delete(UserToDelete);
		return true;
	}

	@Transactional
	public List<User> list() {
		@SuppressWarnings({ "unchecked", "deprecation" })
		List<User> listUser = (List<User>) sessionFactory.getCurrentSession()
				.createCriteria(User.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return listUser;
	}


	@Transactional
	public User get(int id) {
		String hql = "from"+" User"+" where userId="+"id";
		@SuppressWarnings("rawtypes")
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<User> listUser = (List<User>) query.list();
		
		if (listUser != null && !listUser.isEmpty()) {
			return listUser.get(0);
		}
		
		return null;
	}

	@SuppressWarnings("rawtypes")
	@Transactional
	public boolean isValidUser(String userName, String password) {
		Criteria c=sessionFactory.getCurrentSession().createCriteria(User.class);
		c.add(Restrictions.eq("userName",userName));
		c.add(Restrictions.eq("password",password));
		
		List list = c.list();
		if(list==null || list.isEmpty())
		{
			return false;
		}
		else
		{
			return true;
		}
	}

	@Transactional
	public User get(String username) {
		Criteria c=sessionFactory.getCurrentSession().createCriteria(User.class);
		c.add(Restrictions.eq("username",username));
		
		@SuppressWarnings("unchecked")
		List<User> listUser = (List<User>) c.list();
		
		if (listUser != null && !listUser.isEmpty()) {
			return listUser.get(0);
		}
		else {
			return null;
		}
	}


}
