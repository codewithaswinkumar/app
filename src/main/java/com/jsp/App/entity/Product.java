package com.jsp.App.entity;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the products database table.
 * 
 */
@Entity
@Table(name="products")
@NamedQuery(name="Product.findAll", query="SELECT p FROM Product p")
public class Product implements Serializable {
	private static final long serialVersionUID = 1L;

	private String p_Brand;

	private String p_Cost;
    
	@Id
	@Column(name="p_id")
	private Integer pId;

	@Column(name="p_path")
	private String pPath;

	private String p_Type;

	public Product() {
	}

	public String getP_Brand() {
		return this.p_Brand;
	}

	public void setP_Brand(String p_Brand) {
		this.p_Brand = p_Brand;
	}

	public String getP_Cost() {
		return this.p_Cost;
	}

	public void setP_Cost(String p_Cost) {
		this.p_Cost = p_Cost;
	}

	public int getPId() {
		return this.pId;
	}

	public void setPId(int pId) {
		this.pId = pId;
	}

	public String getPPath() {
		return this.pPath;
	}

	public void setPPath(String pPath) {
		this.pPath = pPath;
	}

	public String getP_Type() {
		return this.p_Type;
	}

	public void setP_Type(String p_Type) {
		this.p_Type = p_Type;
	}

}