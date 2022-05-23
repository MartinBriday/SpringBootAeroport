package com.intiformation.SpringBootAeroport.service;

import java.util.List;

import com.intiformation.SpringBootAeroport.model.Avion;
import com.intiformation.SpringBootAeroport.repository.AvionRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AvionServiceImpl implements AvionService {
	
	@Autowired
	private AvionRepository avionRepository;

	@Override
	public List<Avion> get() {
		// TODO Auto-generated method stub
		return avionRepository.findAll();
	}

	@Override
	public Avion get(int id) {
		// TODO Auto-generated method stub
		return avionRepository.getById(id);
	}

	@Override
	public void save(Avion a) {
		// TODO Auto-generated method stub
		avionRepository.save(a);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		avionRepository.deleteById(id);
	}

	@Override
	public void update(Avion a) {
		// TODO Auto-generated method stub
		avionRepository.save(a);
	}

}
