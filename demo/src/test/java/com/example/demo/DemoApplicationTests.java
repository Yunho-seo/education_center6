package com.example.demo;

import static org.hamcrest.CoreMatchers.equalTo;
import static org.springframework.test.web.client.match.MockRestRequestMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultMatcher;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;

@SpringBootTest
@AutoConfigureMockMvc	// Mock : 테스트 환경
class DemoApplicationTests {
	@Autowired
	private MockMvc mvc;	// 자동 bean 객체를 생성한다. (new를 사용하지 않아도 객체 인스턴스)
	// TDD (test base development)
	
	@Test  // 웹서버를 실제 실행하지 않고, Mock을 만들어서 결과를 테스트
		   // 수정 -> 다른 곳에 영향을 미침 (자동 테스트하게 만들어주어야 한다.)
	public void getHello() throws Exception {
		mvc.perform(MockMvcRequestBuilders.get("/").accept(
				MediaType.APPLICATION_JSON))
				.andExpect(status().isOk())  // 상태가 Ok인가?
				.andExpect((ResultMatcher) content().string(equalTo("yes")));  // content에 들어있는 string이 문자열과 같은가?
	}	
//	void contextLoads() {
//	}
}