package com.hasan.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hasan.entity.EmployeeSkill;
import com.hasan.repository.EmployeeSkillRepository;

@Service
public class EmployeeSkillService {

	@Autowired
	private EmployeeSkillRepository repo;
	
	public String saveEmployee(EmployeeSkill emp) {
		repo.save(emp);
		return "Data Saved";
	}
	
	public List<EmployeeSkill> getAllData(){
		return repo.findAll();
	}
	
}
