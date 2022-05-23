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
public class Bagage {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@NonNull
	@Column(nullable = false)
	private Double masse;
	
	@ManyToOne
	@JoinColumn(name = "idPassager", nullable = false)
	private Passager passager;
    
	
}