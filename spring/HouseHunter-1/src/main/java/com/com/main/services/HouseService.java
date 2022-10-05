package com.com.main.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.com.main.models.tv;
import com.com.main.repositories.tvRepository;



@Service
public class tvService {

	@Autowired
	private tvRepository repo;
	
	public tv findById(Long id) {
		
		Optional<tv> result = repo.findById(id);
		if(result.isPresent()) {
			return result.get();
		}
		
		return null;
	}
	

	public List<tv> all() {
		return repo.findAll();
	}
	
	public tv update(tv tv) {
		return repo.save(tv);
	}
	
	public tv create(tv tv) {
		return repo.save(tv);
	}
	
	public void delete(tv tv) {
		repo.delete(tv);
	}
}