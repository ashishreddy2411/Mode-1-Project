package controller;
import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dao.PetAppOp;
import model.Pet;
import model.User;
import service.ServiceOperations;
@Controller
public class PetController {
	ServiceOperations serv;
	String name;
	@RequestMapping("/")
	public ModelAndView homPage(@ModelAttribute() User user)
	{
		serv=new ServiceOperations();
		PetAppOp petop=new PetAppOp();
		serv.setPetopp(petop);
		ModelAndView mv=new ModelAndView("Login","user",new User());
		return mv;
	}
	@RequestMapping("/home")
	public ModelAndView logincontrol(@RequestParam("name") String name,@RequestParam("pass") String pass,@ModelAttribute("user") User user)
	{
		this.name=name;
		ModelAndView mv=new ModelAndView();
		if(serv.authenticate(name, pass))
		{
			mv.setViewName("Home");
		}
		else {
			mv.addObject("data","Invalid Credentials!");
			mv.setViewName("Login");
		}
		/*
		 * Session session=HibernateUtil.getSession(); session.beginTransaction(); User
		 * user=(User)session.get(User.class,name); if(user!=null) {
		 * mv.setViewName("names"); mv.addObject("user",user); }else {
		 * mv.setViewName("Login"); }
		 */
		return mv;
	}
	@RequestMapping("/addAuser")
	public ModelAndView addAUser()
	{
		return new ModelAndView("newUser","user",new User());
	}
	@RequestMapping("/adduser")
	public ModelAndView addUser(@Valid @ModelAttribute("user") User user)
	{
		ModelAndView mv=new ModelAndView();
		if(serv.register(user))
		{
			mv.addObject("data","User Created Successfully!");
		}
		else
		{
			mv.addObject("data","Username Already Exists");
		}
		mv.setViewName("Login");
		return mv;
	}
	@RequestMapping("/viewallpets")
	public ModelAndView ViewAllpets(@ModelAttribute("user") User user)
	{
		List<Pet> pets=serv.viewAllPets();
		ModelAndView mv=new ModelAndView("viewPets");
		mv.addObject("pets",pets);
		return mv;
	}
	@RequestMapping("/addpet")
	public ModelAndView addpets()
	{
		return new ModelAndView("AddPet","pet",new Pet());
	}
	@RequestMapping("/addApet")
	public ModelAndView addApets(@Valid @ModelAttribute("pet") Pet pet)
	{
		ModelAndView mv=new ModelAndView();
		if(serv.addPet(pet))
		{
			mv.addObject("data","Pet Details Added Successfully");
		}else {
			mv.addObject("data","Pet Could Not be Added");
		}
		mv.setViewName("Home");
		return mv;
	}
	@RequestMapping("/buyApet")
	public ModelAndView buyApet(@RequestParam("pet_id") int pet_id)
	{
		ModelAndView mv=new ModelAndView();
		if(serv.buyPet(name,pet_id))
		{
			mv.addObject("data","Purchase Successful!");
		}
		else
		{
			mv.addObject("data","Purchase Unsuccessful!");
		}
		mv.setViewName("Home");
		return mv;
	}
	@RequestMapping("/viewMypets")
	public ModelAndView viewMypets(@ModelAttribute("user") User user)
	{
		List<Pet> pets=serv.viewMypets(name);
		ModelAndView mv=new ModelAndView("viewMYpets");
		mv.addObject("pets",pets);
		return mv;
	}
	@RequestMapping("/back")
	public ModelAndView backPage()
	{
		ModelAndView mv=new ModelAndView("Home");
		return mv;
	}
	@RequestMapping("/logout")
	public ModelAndView logoutPage()
	{
		ModelAndView mv=new ModelAndView("Login","user",new User());
		return mv;
	}
}