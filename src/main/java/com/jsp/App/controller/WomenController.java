package com.jsp.App.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jsp.App.Repository.CartRepository;
import com.jsp.App.Repository.WomenRepository;
import com.jsp.App.entity.Cart;
import com.jsp.App.entity.MenProduct;
import com.jsp.App.entity.User;
import com.jsp.App.entity.WomenProduct;

@Controller
public class WomenController 
{    
	 @Autowired
	 private WomenRepository womenRepo;
	 
	 @Autowired
	 private CartRepository cartrepo;
	 
	 @RequestMapping("/womenPage")
	 public String goToWomenPage(Model model)
	 {
		 List<WomenProduct> list = womenRepo.findAll();
			model.addAttribute("womensProducts",list);
		 return "Women";
	 }
	 
	 @RequestMapping("/addWomen")
		public String addCart(Integer id , Model model,HttpServletRequest req)
		{
			HttpSession s2 = req.getSession();
			String data = (String) s2.getAttribute("login");
			if(data!=null)
			{
			   boolean sData = Boolean.parseBoolean(data);
			   if(sData)
			   {
			try 
			{
			
			WomenProduct wp = womenRepo.findById(id).get();
			Cart c = new Cart();
			c.setId(wp.getId());
			c.setCompanyName(wp.getCompanyName());
			c.setFilePath(wp.getFilePath());
			c.setPrice(wp.getPrice());
			c.setTypeOfCloth(wp.getTypeOfCloth());
			c.setUser((User) s2.getAttribute("user"));		
			cartrepo.save(c);
	//
//			 List<Cart> l = cartrepo.findAll();
//			model.addAttribute("carts", l);
			return "redirect:/mens";
			} 
			catch (Exception e)
			{
//				l=cartrepo.findAll();
//				model.addAttribute("carts", l);
//				return "Cart";
			}
			   }
			}
			return "Login";
		}
}
