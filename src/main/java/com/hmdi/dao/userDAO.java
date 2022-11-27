package com.hmdi.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.stereotype.Service;

import com.hmdi.models.Student;
import com.hmdi.models.user;

@Service
public interface userDAO {

	 
	void register(user uuser);
    void registerRole(user user);
	
	public void setDataSource(DataSource dataSource);
}
