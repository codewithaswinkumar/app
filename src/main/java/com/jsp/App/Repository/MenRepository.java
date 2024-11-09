package com.jsp.App.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.jsp.App.entity.MenProduct;
@Repository
public interface MenRepository extends JpaRepository<MenProduct, Integer> 
{

}
