package com.example.demo.orm;

public class User {
	private long id;
	
	private String name;
	
	private String emailid;
	
	public User() {}  // 배열을 사용할 때에는 꼭 디폴트 생성자가 있어야 한다.
	public User(long id, String name, String emailid) {
		super();
		this.id = id;
		this.name = name;
		this.emailid = emailid;
	}
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	
}