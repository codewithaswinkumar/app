package com.jsp.App.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.Data;
import lombok.ToString;
@Data
@ToString
@Entity
public class User
{
	private String userEmail;
	@Id
	private String userMobile;
	private String userName;
	private String userPassword;
}