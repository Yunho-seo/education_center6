package com.example.demo;

import java.util.Arrays;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;


@SpringBootApplication  // 시작점
public class DemoApplication {

	public static void main(String[] args) {  // 프로그램 시작점
		SpringApplication.run(DemoApplication.class, args);
	}
	
	// context : Container 객체를 관리하는 객체
	// 하는 일이 콘솔에 출력됨 : 디버깅할 때 출력
	@Bean	// 함수 실행으로부터 리턴된 객체를 bean에 등록
	public CommandLineRunner commandLineRunner(ApplicationContext ctx) {
		return args -> {	// lambda 함수
			
			System.out.println("Let's inspect the beans provided by Spring Boot:");
			
			String[] beanNames = ctx.getBeanDefinitionNames();  // bean으로 등록된 이름들 리턴
			Arrays.sort(beanNames);
			for (String beanName : beanNames) {
				System.out.println(beanName);
			}
			System.out.println("이건 기본 폼을 알아보고 테스트에 대한 이해를 위해 예제를 만듬");
		};
	}
}