package com.niit.shoppingcart.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.shoppingcart.DAO.*;
import com.niit.shoppingcart.model.*;

@Configuration
@ComponentScan("com.niit.shoppingcart")
@EnableTransactionManagement
public class ApplicationContextConfig {

		
		
		@Bean(name = "dataSource")
		public DataSource getDataSource() {
			DriverManagerDataSource dataSource = new DriverManagerDataSource();
			dataSource.setDriverClassName("org.h2.Driver");
			dataSource.setUrl("jdbc:h2:tcp://localhost/~/test3");
			dataSource.setUsername("sra");
			dataSource.setPassword("sra");
			System.out.println("Datasource");
			return dataSource;

		}

		private Properties getHibernateProperties() {
			Properties properties = new Properties();
			properties.put("hibernate.show_sql", "true");
			properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
			/*properties.put("hbm2ddl.auto", "create");
			properties.put("hbm2ddl.auto", "update");*/
			System.out.println("Hibernate Properties");
			return properties;

		}

		@Autowired
		@Bean(name = "sessionFactory")
		public SessionFactory getSessionFactory(DataSource dataSource) {
			LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
			sessionBuilder.addProperties(getHibernateProperties());
			sessionBuilder.addAnnotatedClasses(Product.class);
			sessionBuilder.addAnnotatedClasses(Category.class);
			sessionBuilder.addAnnotatedClasses(Supplier.class);
			sessionBuilder.addAnnotatedClasses(User.class);
			sessionBuilder.addAnnotatedClasses(Cart.class);
			sessionBuilder.addAnnotatedClasses(Checkout.class);
			System.out.println("Session");
			
			return sessionBuilder.buildSessionFactory();
			
		}

		@Autowired
		@Bean(name = "transactionManager")
		public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
			HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
			System.out.println("Transaction");
			return transactionManager;
		}
	
		@Autowired
		@Bean(name = "categoryDAO")
		public CategoryDAO getCategorDao(SessionFactory sessionFactory) {
			return new CategoryDAOImpl(sessionFactory);
		}
		
		
		@Autowired
		@Bean(name = "productDAO")
		public ProductDAO getProductDao(SessionFactory sessionFactory) {
				return new ProductDAOImpl(sessionFactory);
		}
		
		
		@Autowired
		@Bean(name = "supplierDAO")
		public SupplierDAO getSupplierDao(SessionFactory sessionFactory) {
				return new SupplierDAOImpl(sessionFactory);
		}
		
		
		@Autowired
		@Bean(name = "userDAO")
		public UserDAO getUserDAO(SessionFactory sessionFactory) {
				return new UserDAOImpl(sessionFactory);
		}
		
		@Autowired
		@Bean(name = "cartDAO")
		public CartDAO getCartDAO(SessionFactory sessionFactory) {
				return new CartDAOImpl(sessionFactory);
		}
		
		
		@Autowired
		@Bean(name = "checkoutDAO")
		public CheckoutDAO getCheckoutDAO(SessionFactory sessionFactory) {
				return new CheckoutDAOImpl(sessionFactory);
		
		
		
		
		
		
		}
}
		     
		   
		        