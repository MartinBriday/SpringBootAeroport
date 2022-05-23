package com.intiformation.SpringBootAeroport.service;

import java.util.List;

import com.intiformation.SpringBootAeroport.model.Compagnie;

public interface CompagnieService {
    public List<Compagnie> get();
	public Compagnie get(int id);
	public void save(Compagnie c);
	public void delete(int id);
	public void update(Compagnie c);
}
