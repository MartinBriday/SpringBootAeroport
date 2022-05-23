package com.intiformation.SpringBootAeroport.service;

import java.util.List;

import com.intiformation.SpringBootAeroport.model.Utilisateur;

public interface UtilisateurService {
    public List<Utilisateur> get();
	public Utilisateur get(int id);
	public Utilisateur get(String email);
	public void save(Utilisateur c);
	public void delete(int id);
	public void update(Utilisateur c);
}
