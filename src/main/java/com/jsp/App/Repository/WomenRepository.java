package com.jsp.App.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.jsp.App.entity.WomenProduct;
@Repository
public interface WomenRepository extends JpaRepository<WomenProduct, Integer>
{

}
