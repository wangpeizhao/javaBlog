package com.blog;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * Hello world!
 *
 */
@Controller
public class App {
	@RequestMapping(value = "/")
	public String HomePage(HttpServletRequest request,HttpServletResponse response){
		System.out.println("Server starting");
		request.setAttribute("title", "My First Spring MVC");
		return "home";
	}
}
