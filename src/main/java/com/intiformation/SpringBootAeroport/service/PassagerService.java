package com.intiformation.SpringBootAeroport.service;

import java.util.List;

import com.intiformation.SpringBootAeroport.model.Passager;

public interface PassagerService {
    public List<Passager> get();
	public Passager get(int id);
	public void save(Passager p);
	public void delete(int id);
	public void update(Passager p);
}
