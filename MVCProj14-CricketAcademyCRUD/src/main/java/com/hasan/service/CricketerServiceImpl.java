package com.hasan.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hasan.model.Cricketer;
import com.hasan.repository.CricketerRepository;

@Service
public class CricketerServiceImpl implements CricketerService {

	@Autowired
	private CricketerRepository repo;

	@Override
	public String saveCricketer(Cricketer c) {
		if(c!=null) { repo.save(c);
		return "ID: "+c.getId()+" record is Added.";
		}
		return "Invalid Cricketer Data";
	}

	@Override
	public List<Cricketer> getAllCricketer() {
		return repo.findAll();
	}

	@Override
	public Cricketer getCricketerById(int id) {
		if(repo.existsById(id)) {
			return repo.findById(id).get();
		}
		return null;
	}

	@Override
	public String updateCricketer(Cricketer c) {
		if(repo.existsById(c.getId())) {
			repo.save(c);
			return "ID: "+c.getId()+" record is Updated.";
		}
		return "Cricketer Not Found.";
	}

	@Override
	public String deletCricketer(int id) {
		if(repo.existsById(id)) {
			repo.deleteById(id);;
			return "ID: "+id+" record is Deleted.";
		}
		return "Cricketer Not Found.";
	}
	
	
}
