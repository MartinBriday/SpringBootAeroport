package com.intiformation.SpringBootAeroport.service;

import java.util.List;

import com.intiformation.SpringBootAeroport.model.Aeroport;

public interface AeroportService {

	public List<Aeroport> get();
	public Aeroport get(int id);
	public void save(Aeroport a);
	public void delete(int id);
	public void update(Aeroport a);
}
