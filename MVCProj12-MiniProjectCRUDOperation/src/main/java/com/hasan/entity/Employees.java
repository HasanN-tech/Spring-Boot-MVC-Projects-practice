package com.hasan.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
@Entity
public class Employees {
	@Id
//	@SequenceGenerator(name="gen1", sequenceName = "emp_id_seq",initialValue = 1,allocationSize = 1)
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	private Integer employeeId;
	
	@NonNull
	@Column(length = 20)
	private String employeeName;
	
	@NonNull
	@Column(length = 20)
	private String job;
	
	@NonNull
	private Integer deptno;
	
	@NonNull
	private Float salary;
}
