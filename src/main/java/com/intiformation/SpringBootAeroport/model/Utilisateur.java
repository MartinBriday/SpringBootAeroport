package com.intiformation.SpringBootAeroport.model;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;

import org.springframework.format.annotation.DateTimeFormat;

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
public class Utilisateur {

	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
	@NonNull
	@Column(nullable = false)
    private String nom;
	@NonNull
	@Column(nullable = false)
    private String prenom;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate dateNaissance;
    private String adresse;
	@Column(unique = true)
    private String numTel;
	@NonNull
	@Column(nullable = false, unique = true)
    private String email;
	@NonNull
	@Column(nullable = false)
    private String password;
	
	@ManyToOne
	@JoinColumn(name = "idRole", nullable = false)
	private Role role;
    
    @OneToMany(targetEntity=Reservation.class, mappedBy = "client")
    private List<Reservation> listeReservation = new ArrayList<Reservation>();
}
