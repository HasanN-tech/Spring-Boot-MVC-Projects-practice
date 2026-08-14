package com.hasan.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hasan.entity.Employees;
import com.hasan.repository.EmployeesRepository;

@Service
public class EmployeesService {

	@Autowired
	private EmployeesRepository repo;
	
	public String saveEmployee(Employees emp) {
		repo.save(emp);
		return "Data Saved";
	}
	
	public Employees getById(int id) {
		return repo.findById(id).get();
	}
	
	public String deleteById(int id) {
		repo.deleteById(id);
		return id+" employee is deleted.";
	}
	
	public List<Employees> getAllData(){
		return repo.findAll();
	}
	
	public String deleteEmp(int id) {
		repo.deleteById(id);
		return "Record Deleted";
	}
}
