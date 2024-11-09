package com.jsp.App.Repository;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.jsp.App.entity.Cart;
import com.jsp.App.entity.User;
@Repository
public interface CartRepository extends JpaRepository<Cart, Integer>
{
    List<Cart> findByUser(User u);
    
    @Transactional
    public void deleteByIdAndUser(Integer id , User user);
    
    public Optional<Cart> findById(Integer id);
}
