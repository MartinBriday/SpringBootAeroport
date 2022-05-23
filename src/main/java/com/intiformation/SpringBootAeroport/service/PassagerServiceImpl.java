package com.intiformation.SpringBootAeroport.service;

import java.util.List;

import com.intiformation.SpringBootAeroport.model.Passager;
import com.intiformation.SpringBootAeroport.repository.PassagerRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PassagerServiceImpl implements PassagerService {

	@Autowired
	private PassagerRepository passagerRepository;

	@Override
	public List<Passager> get() {
		return passagerRepository.findAll();
	}

	@Override
	public Passager get(int id) {
		return passagerRepository.getById(id);
	}

	@Override
	public void save(Passager p) {
		passagerRepository.save(p);
		
	}

	@Override
	public void delete(int id) {
		passagerRepository.deleteById(id);
		
	}

	@Override
	public void update(Passager p) {
		passagerRepository.save(p);
		
	}

}
