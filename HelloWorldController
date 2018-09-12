package com.HMS.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.HMS.DAO.HMSDAO;
import com.HMS.POJO.User;
import com.fasterxml.jackson.core.JsonProcessingException;
@Controller
public class HelloWorldController {
	@Autowired
	HMSDAO dao;
	@RequestMapping("/Home")
	private ModelAndView hello(){
		System.out.println("****************** In controller ******************");



		ModelAndView mv = new ModelAndView();
		mv.setViewName("Home");
		mv.addObject("message", "tESTING...");


		return mv;
	}
	@RequestMapping("/HomePage")
	private ModelAndView page1(){

		ModelAndView mv = new ModelAndView();
		mv.addObject("message", "tESTING...");
		mv.setViewName("Gloworld");
		return mv;
	}
	@RequestMapping(value="/userRegistration",method=RequestMethod.POST)
	public @ResponseBody String User(HttpServletRequest request,@RequestBody User user ) {
		System.out.println("In controller");
		System.out.println(user.toString());
		dao.createUser(user);
		return "true";
	}
	@RequestMapping(value="/checkForEmail",method=RequestMethod.POST)
	public @ResponseBody int checkForEmail(HttpServletRequest request,@RequestBody String email) throws JsonProcessingException{
		System.out.println("email:: "+email.trim());
		System.out.println(request.getParameter("email"));
		int count = dao.checkForEmail(request.getParameter("email"));
		System.out.println(count);
		return count;
	}
	@RequestMapping(value="/signIn",method=RequestMethod.POST)
	public @ResponseBody boolean signIn(HttpServletRequest request,ModelAndView mv){
		System.out.println("sign in");
		String emailId= request.getParameter("email");
		String password = request.getParameter("password");
		if(dao.validateUser(emailId,password)){
			User user = dao.getUserWithEmailId(emailId);
			mv.addObject("user", user);
			return true;
		}
		return false;
	}
	@RequestMapping(value="/loadMainPage",method=RequestMethod.POST)
	public  String loadMainPage(HttpServletRequest request,Model m){
		//ModelAndView mv = new ModelAndView("MainPage");
		System.out.println("main page controller");
		String emailId= request.getParameter("email");
		User user = dao.getUserWithEmailId(emailId);
		System.out.println(user.getfName());
		m.addAttribute("user", user);
		System.out.println("main page controller1111");
		return "MainPage";
	}
	@RequestMapping(value="/getStatersData",method=RequestMethod.POST)
	public @ResponseBody void getStaterData(HttpServletRequest request){
		
	}


}
