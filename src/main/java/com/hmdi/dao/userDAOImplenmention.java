package com.hmdi.dao;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import com.hmdi.models.user;

public class userDAOImplenmention implements userDAO {

	private JdbcTemplate jdpcTemplate;
	private DataSource dataSource; 

   
	@Override
	public void register(user uuser) {
		Object[] userInfo= {uuser.getUsername(),uuser.getPasssword(),uuser.getFullname(),1};
		 String  sql ="INSERT INTO users VALUES (?,?,?,?)";
		 jdpcTemplate.update(sql,userInfo);
		 registerRole(uuser);
		 System.out.println("*  inserted Successfully * ");
		}
	
	
	@Override
	public void registerRole(user user) {
		// TODO Auto-generated method stub
		Object[] UserInfo = {user.getUsername(),"ROLE_USER"};
			String sql = "INSERT INTO `users_roles`( `username`, `role`) VALUES (?,?)";
			jdpcTemplate.update(sql,UserInfo);
			
	}


	@Override
	public void setDataSource(DataSource dataSource) {
		 this.dataSource = dataSource;
			this.jdpcTemplate = new JdbcTemplate(dataSource);	
		
	}

 
	 	
	
	
//*********	
}
