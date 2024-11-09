package com.jsp.App.controller;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.App.Repository.UserRepository;
import com.jsp.App.entity.User;

@RestController
public class UserController 
{
	@Autowired
	private UserRepository urepo;
	
	@GetMapping("/user")
   public List<User> getUser(Model model)
   {
	   return urepo.findAll();
   }
	
	@PostMapping("/user")
	public User addUser(@RequestBody User user)
	{
		return urepo.save(user); 
		//OR urepo.save(user);
		//return "Record Inserted";
	}
	
	@GetMapping("/alluser")
	public ModelAndView testUser( String mobile , String pass ,HttpServletRequest req)
	{
		ModelAndView mv = new ModelAndView("Login");
		
		try
		{
			
		User u = urepo.findById(mobile).get();
		if(u.getUserPassword().equals(pass))
		{
			HttpSession s3 = req.getSession();
			s3.setAttribute("user", u);
			mv.addObject("status", "true");
		}
		else
		{
			
			mv.addObject("status", "false");
		}
		return mv;
		}
		catch (Exception e) 
		{
			
			mv.addObject("status", "false");
			return mv;
		}
	}
	

	@GetMapping("/loginPage")
	public ModelAndView goToLoginPage(HttpServletRequest req)
	{
		ModelAndView mv = new ModelAndView();
	
		HttpSession s3 = req.getSession();
		String data = (String) s3.getAttribute("login");
		   boolean sData = Boolean.parseBoolean(data);
		   if(sData)
		   {
			
			  mv.setViewName("Admin");
			  return mv;
		   }
		   else
		   {
			   mv.setViewName("Login");
			   return mv;
		   }
	}
		
	
	
	@RequestMapping("/userRegistration")
	public ModelAndView regisUser(@ModelAttribute User u)
	{
		ModelAndView mv = new ModelAndView("Registration");
		try
		{
			User us = urepo.findById(u.getUserMobile()).get();
			
			if(us.getUserMobile().equals(u.getUserMobile()))
			{
				mv.addObject("regis","false");
			}
		 return mv;
		} 
		catch (Exception e) 
		{
			urepo.save(u);
			mv.addObject("regis","true");
			return mv;
		}
		
	}

	
}
