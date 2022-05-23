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
public class Compagnie{
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
	@NonNull
	@Column(nullable = false)
    private String nom;
    
    @OneToMany(targetEntity=Avion.class, cascade = CascadeType.PERSIST, mappedBy = "compagnie")
	private List<Avion> listeAvion = new ArrayList<Avion>();
    
    @ManyToMany
    @JoinTable(name = "Vol_Compagnie", joinColumns = @JoinColumn(name = "idCompagnie"), inverseJoinColumns = @JoinColumn(name = "idVol"))
    private List<Vol> listeVol = new ArrayList<Vol>();
	
}
