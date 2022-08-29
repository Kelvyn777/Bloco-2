package com.halloword.hallo.controler;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/bsm")


public class BsmController {
	
	
	@GetMapping
	public String bsm() {
		return  "Orientação ao futuro \r\n"
				+ "Responsabilidade pessoal\r\n"
				+ "Mentalidade de crescimento \r\n"
				+ "Persistência \r\n"
				+ "Trabalho em equipe\r\n"
				+ "Orientação ao detalhe \r\n"
				+ "Pró-atividade\r\n"
				+ "Comunicação";
			    
		

    }
}
