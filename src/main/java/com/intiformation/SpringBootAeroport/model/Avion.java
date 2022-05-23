package com.intiformation.SpringBootAeroport.model;

import javax.persistence.*;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Entity
@Table
@Data
@RequiredArgsConstructor
@NoArgsConstructor
@AllArgsConstructor
public class Avion {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
	@NonNull
	@Column(nullable = false, unique = true)
	private String matricule;
	@NonNull
	@Column(nullable = false)
    private Integer nbPlace;
	@NonNull
	@Column(nullable = false)
    private Boolean diponibilite;
	@NonNull
	@Column(nullable = false)
    private Double charge;
    
    @ManyToOne
	@JoinColumn(name = "idCompagnie", nullable = false)
    private Compagnie compagnie;
	
}

    
