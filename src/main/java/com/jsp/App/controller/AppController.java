package com.jsp.App.controller;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder.In;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.App.Repository.CartRepository;
import com.jsp.App.Repository.ProductRepository;
import com.jsp.App.entity.Cart;
import com.jsp.App.entity.MenProduct;
import com.jsp.App.entity.Product;
import com.jsp.App.entity.User;

@Controller
public class AppController 
{
	
	@Autowired
	private ProductRepository repo;
	
	@Autowired
	private CartRepository cartrepo;
	
	
	
	
	@RequestMapping("/")
    public String displayHome(Model model)
    {
		List<Product> li =repo.findAll();
		model.addAttribute("products", li);
    	return "Home";
    }
	
	
	
	List<Cart> l;
	@RequestMapping("/add")
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
		
		Product p = repo.findById(id).get();
		Cart c = new Cart();
		c.setCompanyName(p.getP_Brand());
		c.setFilePath(p.getPPath());
		c.setPrice(p.getP_Cost());
		c.setTypeOfCloth(p.getP_Type());
		c.setUser((User) s2.getAttribute("user"));		
		cartrepo.save(c);
//
//		 List<Cart> l = cartrepo.findAll();
//		model.addAttribute("carts", l);
		return "redirect:/";
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
	
	
	
	
	@GetMapping("/displayCarts")
	public String displayCart(HttpServletRequest req , Model model)
	{
		HttpSession s2 = req.getSession();
		String data = (String) s2.getAttribute("login");
		if(data!=null)
		{
		   boolean sData = Boolean.parseBoolean(data);
		   if(sData)
		   {
			   User u = (User) s2.getAttribute("user");
			   List<Cart> list = cartrepo.findByUser(u);
			   model.addAttribute("carts", list);
			   return "Cart2";
		   }
		   else
		   {
			   return  "Login";
		   }
	}
		else
		{
			return "Login";
		}
	
	}
	
	
	@RequestMapping("/deleteCart")
	public String deleteItem(Integer id , HttpServletRequest req)
	{
		HttpSession s3 = req.getSession();
		User u =(User)s3.getAttribute("user");
		cartrepo.deleteByIdAndUser(id, u);
		return "redirect:/displayCarts";
	}
	
	@RequestMapping("/logout")
	public String userLogout(HttpServletRequest req)
	{
		HttpSession s5 = req.getSession();
		s5.setAttribute("login", "false");
		return "redirect:/";
		
	}
	
	@RequestMapping("/place")
	public String order(Integer id ,Model model)
	{
		Cart c = cartrepo.findById(id).get();
		model.addAttribute("orderCart", c);
		return "OrderConformation";
	}
	
	@RequestMapping("/pay")
	public String payment()
	{
		return "Payment";
	}
}
