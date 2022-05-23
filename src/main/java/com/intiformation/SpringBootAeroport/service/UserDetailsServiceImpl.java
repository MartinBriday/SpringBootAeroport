package com.intiformation.SpringBootAeroport.service;

import java.util.ArrayList;
import java.util.List;

import com.intiformation.SpringBootAeroport.model.Role;
import com.intiformation.SpringBootAeroport.model.Utilisateur;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

	@Autowired
	private UtilisateurService utilisateurService;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		Utilisateur utilisateur = utilisateurService.get(username);
		
		if (utilisateur == null) {
			throw new UsernameNotFoundException("L'utilisateur '" + username + "' n'exite pas dans la BDD.");
		}
		
		return new User(utilisateur.getEmail(), utilisateur.getPassword(), getListeGrantedAuthority(utilisateur));
	}
	
	private List<GrantedAuthority> getListeGrantedAuthority(Utilisateur u)
	{
		List<GrantedAuthority> listeGrantedAuthorities = new ArrayList<GrantedAuthority>();
		Role r = u.getRole();
		
		listeGrantedAuthorities.add(new SimpleGrantedAuthority(r.getNom()));
		
		return listeGrantedAuthorities;
	}

}
