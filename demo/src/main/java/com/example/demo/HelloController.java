package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

// Container에 등록됨
@RestController  // HelloController를 RestController로 사용하겠다는 의미 / Restful로 리턴 : JSON으로 결과 리턴
public class HelloController {
	@GetMapping("/")  // 루트 주소
	public String index() {
		return "spring을 시작 : test도 같이 함 - 첫 예제 !";
	}
}
