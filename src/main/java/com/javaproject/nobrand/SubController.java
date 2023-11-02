package com.javaproject.nobrand;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SubController {

	@RequestMapping(value = "/sub", method = RequestMethod.GET)
	public String bottom(Model model) {
		return "sub/main";
	}
	
}
