package services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dojo.projects.houseclub.models.house;
import com.dojo.projects.houseclub.repositories.houseRepository;

@Service
public class houseService {

	@Autowired
	private houseRepository repo;
	
	public house findById(Long id) {
		
		Optional<house> result = repo.findById(id);
		if(result.isPresent()) {
			return result.get();
		}
		
		return null;
	}
	

	public List<house> all() {
		return repo.findAll();
	}
	
	public house update(house house) {
		return repo.save(house);
	}
	
	public house create(house house) {
		return repo.save(house);
	}
	
	public void delete(house house) {
		repo.delete(house);
	}
}