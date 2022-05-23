package com.intiformation.SpringBootAeroport.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Entity
@Table
@Data
@NoArgsConstructor
@RequiredArgsConstructor
@AllArgsConstructor
public class Role {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@NonNull
	@Column(unique = true, nullable = false)
	private String nom;
	
	@OneToMany(targetEntity = Utilisateur.class, mappedBy = "role", cascade = CascadeType.PERSIST)
	private List<Utilisateur> listeUtilisateur = new ArrayList<Utilisateur>();
}
