package com.intiformation.SpringBootAeroport.repository;

import com.intiformation.SpringBootAeroport.model.Role;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RoleRepository extends JpaRepository<Role, Integer>
{

	Role findByNom(String nom);
}
