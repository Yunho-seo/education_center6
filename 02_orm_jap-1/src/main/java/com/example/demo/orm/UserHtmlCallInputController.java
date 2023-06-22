package com.example.demo.orm;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

// http://localhost:8081/input으로 매핑됨
@Controller
// @RequestMapping(path="/form", method = RequestMethod.GET)
public class UserHtmlCallInputController {
	@GetMapping("input")
	public String form() {
		return "input";  // html
	}
}