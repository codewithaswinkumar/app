package com.jsp.App.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import org.springframework.data.relational.core.mapping.Column;

import com.fasterxml.jackson.core.sym.Name;

import lombok.Data;
import lombok.ToString;
@Data
@ToString
@Entity
public class Cart 
{
	@Id
	@GeneratedValue
  private Integer id;
  private String filePath;
  private String CompanyName;
  private String price;
  private String typeOfCloth;
 
  @ManyToOne
  @JoinColumn(name = "user_mobile")
  private User user;
}
