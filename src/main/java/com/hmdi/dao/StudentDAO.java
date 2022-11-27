package com.hmdi.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.stereotype.Service;

import com.hmdi.models.Student;

@Service
public interface StudentDAO {

	List<Student> get_all_students();
	void save_student(Student student);
	Student get_student_byID(int id);
	int Update_student(Student student);
	int Delete_student(int id);
	
	public void setDataSource(DataSource dataSource);
}
