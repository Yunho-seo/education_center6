package com.example.demo.orm;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

// form 처리 회로
// /inputform/add
@Controller  // @Component, @Controller, @Service, @Repository  <매핑 처리>
@RequestMapping(path="/inputform", method = RequestMethod.POST)
public class UserWebController {
	@Autowired  // 자동으로 Dependency Injection 객체 생성
	private UserRepository userRepository;
	@PostMapping(path="/add")
	public @ResponseBody String addNewUser (@RequestParam long id,
			@RequestParam String name, @RequestParam String emailid) {
		User n = new User();  // container 기능을 사용하지 않고, 자동 인스턴스
		n.setId(id);
		n.setName(name);
		n.setEmailid(emailid);
		userRepository.insert(n);
		return "Saved";
	}

}