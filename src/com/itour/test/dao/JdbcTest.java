package com.itour.test.dao;

import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
public class JdbcTest {
    
	
	public static void main(String[] args) {
		ClassPathXmlApplicationContext context=  new ClassPathXmlApplicationContext("classpath:/spring-common.xml"); 
		JdbcTemplate bean = (JdbcTemplate) context.getBean("jdbcTemplate",JdbcTemplate.class);
		//bean.
		System.out.println(bean.queryForInt("select count(1) from customers"));
	}

}
