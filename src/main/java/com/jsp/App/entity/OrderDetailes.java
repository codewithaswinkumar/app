package com.jsp.App.entity;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
@Entity
public class OrderDetailes
{
  @Id
  @GeneratedValue
  private int orderId;
  
  @OneToOne
  @JoinColumn(name = "umobile")
  private User user;
}
