package com.hmdi.dto;






public class StudentDTO {

	private int student_id=1000;
	private String name ="muhmd hmddddi";
	private String city ="6 OOctober";
	private int age =50;
	public int getStudent_id() {
		return student_id;
	}
	public void setStudent_id(int student_id) {
		this.student_id = student_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	@Override
	public String toString() {
		return "StudentDTO [student_id=" + student_id + ", name=" + name + ", city=" + city + ", age=" + age + "]";
	}
	
	
	
	
}