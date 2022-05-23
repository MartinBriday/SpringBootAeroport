package com.intiformation.SpringBootAeroport.model;

import java.time.LocalDate;

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
public class Reservation {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    @NonNull
    @Column(nullable = false, unique = false)
    private String reference;
    @NonNull
    @Column(nullable = false)
    private LocalDate date;

    @ManyToOne
    @JoinColumn(name = "idClient", nullable = false)
    private Utilisateur client;
    
    @ManyToOne
    @JoinColumn(name = "idPassager", nullable = false)
    private Passager passager;
    
    @ManyToOne
    @JoinColumn(name = "idVol", nullable = false)
    private Vol vol;
    
    
}
