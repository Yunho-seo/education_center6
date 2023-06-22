package com.example.demo.aop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController  // JSON : frontend / backend 구분하여 프로그래밍
public class EmployeeController {
	@Autowired
	private EmployeeService employeeService;
	
	@RequestMapping(value = "/add/employee", method = RequestMethod.POST)
	public Employee addEmployee(@RequestParam("name") String name,
			@RequestParam("empId") String empId) {
		return employeeService.createEmployee(name, empId);
	}
	
	@RequestMapping(value = "/remove/employee", method = RequestMethod.GET)
	public String removeEmployee(@RequestParam("empId") String empId) {
		employeeService.deleteEmployee(empId);
		return "Employee removed";
	}
}
