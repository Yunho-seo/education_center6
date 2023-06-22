package com.example.demo.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

// 자원활용을 위한 주소매핑
// 직접 이미지 연결하기 위한 리소스 위치를 지정한다.

@Configuration
public class MvcConfig implements WebMvcConfigurer {
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/testImage/**")
		 .addResourceLocations("classpath:/testImage/", "/testImage/");
	}
}
