package com.example.demo.aop;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class EmployeeServiceAspect {
	@Before(value = "execution(* com.javainuse.service.EmployeeService.*(..)) "
			+ "and args(name, empId)")
	public void beforeAdvice(JoinPoint joinPoint, String name, String empId) {
		System.out.println("Before method:" + joinPoint.getSignature());
		System.out.println("다음 데이터 생성 준비: name ~ " + name + " and id ~ " + empId);
	}
	
	@After(value = "execution(* com.javainuse.service.EmployeeService.*(..)) "
			+ "and args(name, empId)")
	public void afterAdvice(JoinPoint joinPoint, String name, String empId) {
		System.out.println("After method:" + joinPoint.getSignature());
		System.out.println("성공적으로 다음데이터 생성 : name ~ " + name + " and id ~ " + empId);
	}
}
