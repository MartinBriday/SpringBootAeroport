package com.intiformation.SpringBootAeroport.model;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

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
public class Passager {

	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
	@NonNull
	@Column(nullable = false)
    private String nom;
	@NonNull
	@Column(nullable = false)
    private String prenom;
    private LocalDate dateNaissance;
    private String adresse;
	@Column(unique = true)
    private String numTel;
	@NonNull
	@Column(nullable = false, unique = true)
    private String email;
    
    @OneToMany(targetEntity=Bagage.class, cascade = CascadeType.ALL, mappedBy = "passager")
    private List<Bagage> listeBagage = new ArrayList<Bagage>();

    @OneToMany(targetEntity=Reservation.class, mappedBy = "passager")
    private List<Reservation> listeReservation = new ArrayList<Reservation>();
	
}
