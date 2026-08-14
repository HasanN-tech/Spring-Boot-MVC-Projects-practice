package com.hasan.entity;

public class Student {
	private String name;
	private String course;
	private String city;
	
	public Student(String name, String course, String city) {
		super();
		this.name = name;
		this.course = course;
		this.city = city;
	}
	
	public String getName() {
		return name;
	}
	public String getCourse() {
		return course;
	}
	public String getCity() {
		return city;
	}

	@Override
	public String toString() {
		return "Student [name=" + name + ", course=" + course + ", city=" + city + "]";
	}	
}
