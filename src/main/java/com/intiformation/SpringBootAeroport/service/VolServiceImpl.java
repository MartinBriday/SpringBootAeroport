package com.intiformation.SpringBootAeroport.service;

import java.util.List;

import com.intiformation.SpringBootAeroport.model.Vol;
import com.intiformation.SpringBootAeroport.repository.VolRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class VolServiceImpl implements VolService {

    @Autowired
    VolRepository volRepository;

	@Override
	public List<Vol> get() {
		return volRepository.findAll();
	}

	@Override
	public Vol get(int id) {
		return volRepository.getById(id);
	}

	@Override
	public void save(Vol v) {
		volRepository.save(v);
		
	}

	@Override
	public void delete(int id) {
		volRepository.deleteById(id);
		
	}

	@Override
	public void update(Vol v) {
		volRepository.save(v);
		
	}

}