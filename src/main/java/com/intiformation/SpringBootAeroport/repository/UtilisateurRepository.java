package com.intiformation.SpringBootAeroport.repository;

import java.time.LocalDate;

import javax.transaction.Transactional;

import com.intiformation.SpringBootAeroport.model.Utilisateur;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
@Transactional
public interface UtilisateurRepository extends JpaRepository<Utilisateur, Integer> {

	Utilisateur findByEmail(String email);
	
	@Modifying
	@Query(value = "update Utilisateur u set u.nom = :nom, u.prenom = :prenom, u.dateNaissance = :dateNaissance, u.adresse = :adresse, u.numTel = :numTel, u.email = :email where u.id = :id")
	void updateUtilisateurById(@Param("id") int id, @Param("nom") String nom, @Param("prenom") String prenom, @Param("dateNaissance") LocalDate dateNaissance, @Param("adresse") String adresse, @Param("numTel") String numTel, @Param("email") String email);
}
