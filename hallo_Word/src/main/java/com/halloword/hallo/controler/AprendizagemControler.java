package com.halloword.hallo.controler;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/objetivo")

public class AprendizagemControler {

	@GetMapping
	public String objetivos() {
		return  "Como objetivos de aprendizagem desta semana, tenho em mente aprender ao maximo"
				+ " de uma maneira na qual eu consiga me desenvolver bem"
				+ " e possa ajudar meus colegas de grupo";
	}
}
