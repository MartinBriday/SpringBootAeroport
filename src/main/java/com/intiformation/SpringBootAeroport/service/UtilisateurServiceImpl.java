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
	public void save(Utilisateur u) {

		utilisateurRepository.save(u);
	}

	@Override
	public void delete(int id) {
		
		utilisateurRepository.deleteById(id);
	}

	@Override
	public void update(Utilisateur u) {
		
//		utilisateurRepository.save(c);
		utilisateurRepository.updateUtilisateurById(u.getId(), u.getNom(), u.getPrenom(), u.getDateNaissance(), u.getAdresse(), u.getNumTel(), u.getEmail());
		
	}

	@Override
	public Utilisateur get(String email) {
		// TODO Auto-generated method stub
		return utilisateurRepository.findByEmail(email);
	}
}
