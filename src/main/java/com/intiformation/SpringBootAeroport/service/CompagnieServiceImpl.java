package com.intiformation.SpringBootAeroport.service;

import java.util.List;

import com.intiformation.SpringBootAeroport.model.Compagnie;
import com.intiformation.SpringBootAeroport.repository.CompagnieRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CompagnieServiceImpl implements CompagnieService {
    
    @Autowired
    CompagnieRepository compagnieRepository;

	@Override
	public List<Compagnie> get() {
		
		return compagnieRepository.findAll();
	}

	@Override
	public Compagnie get(int id) {
		
		return compagnieRepository.getById(id);
	}

	@Override
	public void save(Compagnie c) {
		compagnieRepository.save(c);
		
	}

	@Override
	public void delete(int id) {
		compagnieRepository.deleteById(id);
		
	}

	@Override
	public void update(Compagnie c) {
		compagnieRepository.save(c);
		
	}
}
