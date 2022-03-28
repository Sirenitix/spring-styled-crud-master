package com.suleevn.springboot.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@Controller("error")
public class ErrorController {

	@ExceptionHandler(Exception.class)
	public ModelAndView handleException
		(HttpServletRequest request, Exception ex){
		ModelAndView mv = new ModelAndView();
		System.out.println(ex.getStackTrace());
		mv.addObject("exception", ex.getLocalizedMessage());
		mv.addObject("url", request.getRequestURL());
		ex.printStackTrace();
		mv.setViewName("error");
		return mv;
	}

}
