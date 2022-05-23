package com.intiformation.SpringBootAeroport.service;

import java.util.List;

import com.intiformation.SpringBootAeroport.model.Escale;
import com.intiformation.SpringBootAeroport.repository.EscaleRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EscaleServiceImpl implements EscaleService {

	@Autowired
	private EscaleRepository escaleRepository;

	@Override
	public List<Escale> get() {
		return escaleRepository.findAll();
	}

	@Override
	public Escale get(int id) {
		return escaleRepository.getById(id);
	}

	@Override
	public void save(Escale a) {
		escaleRepository.save(a);
	}

	@Override
	public void delete(int id) {
		escaleRepository.deleteById(id);
	}

	@Override
	public void update(Escale a) {
		escaleRepository.save(a);
	}

}
