package com.hasan.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Student {

	private Integer studentId;
	private String studentName;
	private String course;
	private String email;
	private Long mobileNumber;
	
}
