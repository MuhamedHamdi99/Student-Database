package com.hmdi.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.hmdi.dao.StudentDAO;
import com.hmdi.dto.StudentDTO;
import com.hmdi.models.Student;

@Controller
public class StudentController {

	@Autowired
	private StudentDAO studentDAO;
	
	
	@RequestMapping(value="/" ,method =RequestMethod.GET )
	public String intil_Student() {
 		return "index";
	}
	
	
	@RequestMapping(value="/showstudents" ,method =RequestMethod.GET )
	public String Show_Student_Info(Model model) {
		List<Student> students = studentDAO.get_all_students();
		for(Student st:students) {System.out.println(st);}
		model.addAttribute("allstudents",students);
		return "student-list";
	}
//**************************************************************************************	
	@RequestMapping(value="/addstudent" ,method =RequestMethod.GET )
	public String add_Student(Model model) {
		 StudentDTO studentDto = new StudentDTO();
		model.addAttribute("student",studentDto);
		return "add-student";
	}
 	
	@RequestMapping(value="/savestudent" ,method =RequestMethod.POST )
	public String Save_Student(Student stud) {
		studentDAO.save_student(stud); 
		return "redirect:/showstudents";
	}

//**************************************************************************************	
	@RequestMapping(value="/edit" ,method =RequestMethod.GET )
	public String Edit_Student(@RequestParam int id,Model model) {
		Student st=  studentDAO.get_student_byID(id); 
		model.addAttribute("student",st);
		return "edit-student";
	}

//**************************************************************************************	
	@RequestMapping(value="/update" ,method =RequestMethod.POST )
	public String Update_Student(Student stud) {
		studentDAO.Update_student(stud); 
		return "redirect:/showstudents";
	}

//**************************************************************************************	
	@RequestMapping(value="/delete/{id}" ,method =RequestMethod.GET )
	public String Delete_Student(@PathVariable int id) {
		studentDAO.Delete_student(id); 
		return "redirect:/showstudents";
	}
	
//*****	
}
