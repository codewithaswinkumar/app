package com.jsp.App.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.jsp.App.entity.Product;
@Repository
public interface ProductRepository extends JpaRepository<Product, Integer> 
{

}
