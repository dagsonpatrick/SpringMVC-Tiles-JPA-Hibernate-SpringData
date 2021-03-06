package br.com.a4solutions.springmvc.repositorios;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.a4solutions.springmvc.dominios.Usuario;

public interface RepositorioUsuario extends JpaRepository<Usuario, Long>{
	
	Usuario findByUsername(String username);

}
