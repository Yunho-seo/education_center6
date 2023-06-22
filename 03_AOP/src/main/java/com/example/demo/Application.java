package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.EnableAspectJAutoProxy;

@SpringBootApplication
@EnableAspectJAutoProxy(proxyTargetClass=true)  // 프록시를 자동으로 만들기
public class Application {

	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);
	}

}
