package br.com.a4solutions.springmvc.controllers;

import java.util.List;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.a4solutions.springmvc.dominios.Usuario;
import br.com.a4solutions.springmvc.repositorios.RepositorioUsuario;

@Controller
@RequestMapping("/usuarios")
public class UsuariosController {
	
	@Autowired
	private RepositorioUsuario repositorio;
	
	@RequestMapping(value = "/listar", method = RequestMethod.GET)
	public String listar(Model model) {
		List<Usuario> usuarios = repositorio.findAll();
		model.addAttribute("usuarios",usuarios);
		return "usuario.listar.tiles";
	}
	
	@RequestMapping(value = "/adicionar", method = RequestMethod.GET)
	public String adicionar(Model model) {
		model.addAttribute("usuario", new Usuario());
		return "usuario.adicionar.tiles";
	}
	
	@RequestMapping(value = "/adicionar", method = RequestMethod.POST)
	public String adicionar(@ModelAttribute("usuario") @Valid Usuario usuario, BindingResult result) {
		if(result.hasErrors()) {
			return "usuario.adicionar.tiles";
		}
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		usuario.setPassword(encoder.encode(usuario.getPassword()));
		repositorio.save(usuario);
		return "redirect:/usuarios/listar";
		
	}
	
	
	
}
