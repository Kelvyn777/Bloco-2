package com.generation.loja.games.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.generation.loja.games.model.Categoria;


public interface CategoriaRepository extends JpaRepository<Categoria, Long>{
	public List <Categoria> findAllByDescricaoContainingIgnoreCase(String descricao);

	
	}

