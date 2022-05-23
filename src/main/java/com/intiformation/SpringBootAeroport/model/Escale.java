package com.intiformation.SpringBootAeroport.model;

import java.time.LocalDate;
import java.time.LocalTime;

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
public class Escale {

	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
	@NonNull
	@Column(nullable = false)
    private LocalDate dateDepart;
	@NonNull
	@Column(nullable = false)
    private LocalTime heureDepart;
	@NonNull
	@Column(nullable = false)
    private LocalDate dateArrivee;
	@NonNull
	@Column(nullable = false)
    private LocalTime heureArrivee;
    
    @ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name = "idAeroport", nullable = false)
    private Aeroport aeroport;
    
    @ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name = "idVol", nullable = false)
    private Vol vol;
}
