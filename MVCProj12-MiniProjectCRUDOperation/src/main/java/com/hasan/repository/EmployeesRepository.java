package com.hasan.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.hasan.entity.Employees;

public interface EmployeesRepository extends JpaRepository<Employees, Integer> {

}
