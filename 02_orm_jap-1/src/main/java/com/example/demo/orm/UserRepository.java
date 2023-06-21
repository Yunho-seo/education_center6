package com.example.demo.orm;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

@Mapper
public interface UserRepository {
	@Select("select * from users")
	public List<User> findAll();
	
	@Select("select * from users where id = #{id}")
	public User findById(long id);
	
	@Delete("delete from users where id = #{id}")
	public int deleteById(long id);
	
	@Insert("insert into users(id, name, emailid) " +
			" values (#{id}, #{name}, #{emailid})")
	public int insert(User user);
	
	@Update("Update users set name=#{name}, " +
			" emailid=#{emailid} where id=#{id}")
	public int update(User user);
}
