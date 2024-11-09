package com.jsp.App.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jsp.App.Repository.CartRepository;
import com.jsp.App.Repository.MenRepository;
import com.jsp.App.entity.Cart;
import com.jsp.App.entity.MenProduct;
import com.jsp.App.entity.Product;
import com.jsp.App.entity.User;

@Controller
public class MenController 
{
	@Autowired
   private MenRepository menRepo;
	
	@Autowired
	private CartRepository cartrepo;
	
	@RequestMapping("/mens")
	public String displayMen(Model model)
	{
		List<MenProduct> list = menRepo.findAll();
		model.addAttribute("menProducts",list);
		return "MEN";
	}
	
	@RequestMapping("/addMen")
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
		
		MenProduct mp = menRepo.findById(id).get();
		Cart c = new Cart();
		c.setId(mp.getId());
		c.setCompanyName(mp.getCompanyName());
		c.setFilePath(mp.getFilePath());
		c.setPrice(mp.getPrice());
		c.setTypeOfCloth(mp.getTypeOfCloth());
		c.setUser((User) s2.getAttribute("user"));		
		cartrepo.save(c);
//
//		 List<Cart> l = cartrepo.findAll();
//		model.addAttribute("carts", l);
		return "redirect:/mens";
		} 
		catch (Exception e)
		{
//			l=cartrepo.findAll();
//			model.addAttribute("carts", l);
//			return "Cart";
		}
		   }
		}
		return "Login";
	}
}
