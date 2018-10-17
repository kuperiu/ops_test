package com.example.r42;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SuchController {

	@Value("${availabilityZone}") private String availabilityZone;

	@RequestMapping("/hello")
	public String suchHello(){
		return "wow it's the az " + availabilityZone;
	}
}
