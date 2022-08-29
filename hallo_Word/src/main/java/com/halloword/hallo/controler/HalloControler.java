package com.halloword.hallo.controler;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/hallo")

public class HalloControler {

	@GetMapping
	public String hello() {
		return "hallo Generation";
		
	}
	
	
}
