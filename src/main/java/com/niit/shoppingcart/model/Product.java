package com.niit.shoppingcart.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name="PRODUCT")
@Component
public class Product {
	
@Id
@GeneratedValue
 private int id;
private String name;
private int category_id;
private int supplier_id;
/*@ManyToOne
@JoinColumn(name="category_id",insertable=false,updatable=false,nullable=false)
private Category category;
@ManyToOne
@JoinColumn(name="supplier_id",insertable=false,updatable=false,nullable=false)
private Supplier supplier;*/
private double  price;
private int stock;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public int getCategory_id() {
	return category_id;
}
public void setCategory_id(int category_id) {
	this.category_id = category_id;
}
public int getSupplier_id() {
	return supplier_id;
}
public void setSupplier_id(int supplier_id) {
	this.supplier_id = supplier_id;
}
/*public Category getCategory() {
	return category;
}
public void setCategory(Category category) {
	this.category = category;
}
public Supplier getSupplier() {
	return supplier;
}
public void setSupplier(Supplier supplier) {
	this.supplier = supplier;
}
*/public double getPrice() {
	return price;
}
public void setPrice(double price) {
	this.price = price;
}
public int getStock() {
	return stock;
}
public void setStock(int stock) {
	this.stock = stock;
}

@Transient
private MultipartFile image;

public MultipartFile getImage() {
	return image;
}
public void setImage(MultipartFile image) {
	this.image = image;
}

}
