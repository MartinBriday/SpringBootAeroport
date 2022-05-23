package com.intiformation.SpringBootAeroport.service;

import java.util.List;

import com.intiformation.SpringBootAeroport.model.Bagage;
import com.intiformation.SpringBootAeroport.repository.BagageRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BagageServiceImpl implements BagageService {

	@Autowired
	private BagageRepository bagageRepository;
	
	@Override
	public List<Bagage> get() {
		// TODO Auto-generated method stub
		return bagageRepository.findAll();
	}

	@Override
	public Bagage get(int id) {
		// TODO Auto-generated method stub
		return bagageRepository.getById(id);
	}

	@Override
	public void save(Bagage b) {
		// TODO Auto-generated method stub
		bagageRepository.save(b);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		bagageRepository.deleteById(id);
	}

	@Override
	public void update(Bagage b) {
		// TODO Auto-generated method stub
		bagageRepository.save(b);
	}

}
