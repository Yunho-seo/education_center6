package com.example.demo.orm;

public class UserIdAlreadyExistException extends RuntimeException {
	public UserIdAlreadyExistException() {
		super("동일한 id가 존재합니다.");
	}
}