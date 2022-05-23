package com.intiformation.SpringBootAeroport.service;

import java.util.List;

import com.intiformation.SpringBootAeroport.model.Avion;

public interface AvionService {

	public List<Avion> get();
	public Avion get(int id);
	public void save(Avion a);
	public void delete(int id);
	public void update(Avion a);
}
