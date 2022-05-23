package com.intiformation.SpringBootAeroport.service;

import java.util.List;

import com.intiformation.SpringBootAeroport.model.Escale;

public interface EscaleService {

    public List<Escale> get();
	public Escale get(int id);
	public void save(Escale e);
	public void delete(int id);
	public void update(Escale e);
}
