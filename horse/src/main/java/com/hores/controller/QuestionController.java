package com.hores.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class QuestionController {
	@RequestMapping(value = "/question")
	public String firstPage() {
		return "question";
	}
}
