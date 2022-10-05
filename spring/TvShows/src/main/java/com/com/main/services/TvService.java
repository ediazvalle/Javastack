package com.com.main.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.com.main.models.Tv;
import com.com.main.repositories.TvRepository;



@Service
public class TvService {

	@Autowired
	private TvRepository repo;
	
	public Tv findById(Long id) {
		
		Optional<Tv> result = repo.findById(id);
		if(result.isPresent()) {
			return result.get();
		}
		
		return null;
	}
	

	public List<Tv> all() {
		return repo.findAll();
	}
	
	public Tv update(Tv tv) {
		return repo.save(tv);
	}
	
	public Tv create(Tv tv) {
		return repo.save(tv);
	}
	
	public void deleteTv(Tv tv) {
		repo.delete(tv);
	}
}