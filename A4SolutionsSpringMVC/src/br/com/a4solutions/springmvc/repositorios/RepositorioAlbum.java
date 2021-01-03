package br.com.a4solutions.springmvc.repositorios;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.a4solutions.springmvc.dominios.Album;

public interface RepositorioAlbum extends JpaRepository<Album, Long>{

}
