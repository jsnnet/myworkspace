package kr.co.doosun.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DefaultController {
	/*
	 * @Autowired private AopController ap;
	 */
	
	@GetMapping(value = {"/", "/main"})
	public String defaultcontroller(Model m) {
		return "doo_slideshow3"; //doo_autoimgslide
	}
	
	@GetMapping(value = {"/payment"})
	public String payController(Model m) {
		return "doo_iamport";
	}
	
	@GetMapping(value = {"/table1"})
	public String tableController(Model m) {
		return "doo_simpleTable";
	}
	
}
