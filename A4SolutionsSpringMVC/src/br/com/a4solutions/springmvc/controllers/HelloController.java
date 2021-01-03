package br.com.a4solutions.springmvc.controllers;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/hello")
public class HelloController {
		
	@RequestMapping("/message")
	public String message() {
		return "hello";
	}
	
	@RequestMapping("/mensagemDoServidor")
	public String mensagemDoServidor(Model model) {
		model.addAttribute("mensagem", "Olá, A4Solutions "+ new Date().toString());
		return "mensagemDoServidor";
	}
	
	@RequestMapping("/mensagemDoServidor2")
	public ModelAndView mensagemDoSevidorV2() {
		return new ModelAndView("mensagemDoServidor", "mensagem", new Date().toString());
	}
	
	@RequestMapping("/receberMensagem/{mensagem}")
	public String receberMensagem(Model model, @PathVariable("mensagem") String msg) {
		
		model.addAttribute("mensagem", msg);
		
		return "mensagemDoServidor";
	}
	
	@RequestMapping("/receberMensagem2")
	public String receberMensagem2(Model model, @RequestParam(value = "mensagem", required=false, defaultValue="Mensagem Padrão") String msg) {
		
		model.addAttribute("mensagem", msg);
		
		return "mensagemDoServidor";
	}
	
	
	
	
	
	
	

}
