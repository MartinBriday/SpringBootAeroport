package com.intiformation.SpringBootAeroport.model;

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
public class Aeroport {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@NonNull
	@Column(nullable = false)
    private String nom;
    private String adresse;
	@Column(unique = true)
    private String numTel;

    @OneToMany(targetEntity=Vol.class, mappedBy = "aeroportDepart")
    private List<Vol> listeVolDepart;

    @OneToMany(targetEntity=Vol.class, mappedBy = "aeroportArrivee")
    private List<Vol> listeVolArrivee;

    //@JoinTable(name = "Escale", joinColumns = @JoinColumn(name = "idAeroport"), inverseJoinColumns = @JoinColumn(name = "idVol"))
    @OneToMany(targetEntity=Escale.class, mappedBy = "aeroport")
    private List<Escale> listeEscale = new ArrayList<Escale>();

	
}
