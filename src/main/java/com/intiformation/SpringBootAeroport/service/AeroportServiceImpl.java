package com.intiformation.SpringBootAeroport.service;

import java.util.List;

import com.intiformation.SpringBootAeroport.model.Aeroport;
import com.intiformation.SpringBootAeroport.repository.AeroportRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AeroportServiceImpl implements AeroportService {
	
	@Autowired
	private AeroportRepository aeroportRepository;

	@Override
	public List<Aeroport> get() {
		return aeroportRepository.findAll();
	}

	@Override
	public Aeroport get(int id) {
		// TODO Auto-generated method stub
		return aeroportRepository.getById(id);
	}

	@Override
	public void save(Aeroport a) {
		// TODO Auto-generated method stub
		aeroportRepository.save(a);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		aeroportRepository.deleteById(id);
	}

	@Override
	public void update(Aeroport a) {
		// TODO Auto-generated method stub
		aeroportRepository.save(a);
	}

}
