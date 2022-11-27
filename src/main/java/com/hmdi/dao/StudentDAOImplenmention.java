package com.hmdi.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import com.hmdi.models.Student;
import com.hmdi.rowmapper.StudentRowMapper;

public class StudentDAOImplenmention implements StudentDAO {

	private JdbcTemplate jdpcTemplate;
	private DataSource dataSource; 

	
	public StudentDAOImplenmention(DataSource dataSource) {
		jdpcTemplate = new JdbcTemplate(dataSource);
	
	}
	
	
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	@Override
	public List<Student> get_all_students() {
		 String  sql = "SELECT * FROM `studenintable`"; 
		 List<Student> studes = jdpcTemplate.query(sql, new StudentRowMapper());
		return studes;
	}
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	@Override
	public void save_student(Student student) {
		 Object[] studentInfo= {student.getStudent_id(),student.getName(),student.getAge(),student.getCity()};
		 String  sql ="INSERT INTO `studenintable`(`student_id`, `name`, `age`, `city`) VALUES ( ?,?,?,?)";
		 jdpcTemplate.update(sql,studentInfo);
		 System.out.println("Successfully Inserted .");
	}
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	@Override
	public Student get_student_byID(int id) {
		String  sql = "SELECT `id`,`student_id`, `name`, `age`, `city` FROM `studenintable` WHERE id=?"; 
		return jdpcTemplate.queryForObject(sql,new Object[] {id}, new StudentRowMapper());
	}
	
	
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++	
	@Override
	public int Update_student(Student student) {
		String  sql ="UPDATE `studenintable` SET `student_id`='"+student.getStudent_id()+"',"
				+ "`name`='"+student.getName()+"',`age`='"+student.getAge()+"',"
				+ "`city`='"+student.getCity()+"' WHERE `id`="+student.getId();
		return jdpcTemplate.update(sql);
	}
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	@Override
	public int Delete_student(int id) {
		String  sql ="DELETE FROM `studenintable` WHERE `id`="+id;
		return jdpcTemplate.update(sql);
	}
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	@Override
	public void setDataSource(DataSource dataSource) {
		 this.dataSource = dataSource;
		this.jdpcTemplate = new JdbcTemplate(dataSource);	
	}


	

	
	
	
	
//*********	
}
