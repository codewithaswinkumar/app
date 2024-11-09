package com.jsp.App.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.jsp.App.entity.User;
@Repository
public interface UserRepository extends JpaRepository<User, String>
{

}
