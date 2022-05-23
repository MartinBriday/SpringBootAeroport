package com.intiformation.SpringBootAeroport.service;

import java.util.List;

import com.intiformation.SpringBootAeroport.model.Role;
import com.intiformation.SpringBootAeroport.repository.RoleRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RoleServicempl implements RoleService
{
	
	@Autowired
	private RoleRepository roleRepository;

	@Override
	public List<Role> getRole() {
		// TODO Auto-generated method stub
		return roleRepository.findAll();
	}

	@Override
	public Role getRole(int id) {
		// TODO Auto-generated method stub
		return roleRepository.getById(id);
	}

	@Override
	public void save(Role r) {
		// TODO Auto-generated method stub
		roleRepository.save(r);
	}

	@Override
	public Role getRole(String nom) {
		// TODO Auto-generated method stub
		return roleRepository.findByNom(nom);
	}
}
