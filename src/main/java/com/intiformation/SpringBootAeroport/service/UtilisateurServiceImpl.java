package com.intiformation.SpringBootAeroport.service;

import java.util.List;

import com.intiformation.SpringBootAeroport.model.Utilisateur;
import com.intiformation.SpringBootAeroport.repository.UtilisateurRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UtilisateurServiceImpl implements UtilisateurService {

    @Autowired
    UtilisateurRepository utilisateurRepository;

	@Override
	public List<Utilisateur> get() {
		
		return utilisateurRepository.findAll();
	}

	@Override
	public Utilisateur get(int id) {
		
		return utilisateurRepository.getById(id);
	}

	@Override
	public void save(Utilisateur c) {

		utilisateurRepository.save(c);
	}

	@Override
	public void delete(int id) {
		
		utilisateurRepository.deleteById(id);
	}

	@Override
	public void update(Utilisateur c) {
		
		utilisateurRepository.save(c);
		
	}

	@Override
	public Utilisateur get(String email) {
		// TODO Auto-generated method stub
		return utilisateurRepository.findByEmail(email);
	}
}
