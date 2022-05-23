package com.intiformation.SpringBootAeroport.service;

import java.util.List;

import com.intiformation.SpringBootAeroport.model.Role;

public interface RoleService
{

	public List<Role> getRole();
	public Role getRole(int id);
	public Role getRole(String nom);
	public void save(Role r);
	
}
