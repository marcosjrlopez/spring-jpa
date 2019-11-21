package br.com.mjr.base.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String index() {
		System.out.println("IMPRIMINDO INFORMAÇÕES NO CONSOLE... TESTE ...");
		return "home";
	}
	
}
