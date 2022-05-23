package com.intiformation.SpringBootAeroport.service;

import java.util.List;

import com.intiformation.SpringBootAeroport.model.Bagage;

public interface BagageService {

	public List<Bagage> get();
	public Bagage get(int id);
	public void save(Bagage b);
	public void delete(int id);
	public void update(Bagage b);
}
