package com.hasan.service;

import java.util.List;

import com.hasan.model.Cricketer;

public interface CricketerService {
	public String saveCricketer(Cricketer c);
	public List<Cricketer> getAllCricketer();
	public Cricketer getCricketerById(int id);
	public String updateCricketer(Cricketer c);
	public String deletCricketer(int id);
}
