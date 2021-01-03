package br.com.a4solutions.springmvc.repositorios;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.a4solutions.springmvc.dominios.Musica;

public interface RepositorioMusica extends JpaRepository<Musica, Long>{

}
