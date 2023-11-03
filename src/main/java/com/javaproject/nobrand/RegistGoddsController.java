package com.javaproject.nobrand;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RegistGoddsController {

	@RequestMapping(value = "/registgoods", method = RequestMethod.GET)
	public String registGoods(Model model) {
		return "registgoods/registgoods";
	}
	
}
