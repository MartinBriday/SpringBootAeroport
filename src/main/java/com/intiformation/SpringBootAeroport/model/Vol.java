package com.intiformation.SpringBootAeroport.model;

import java.time.LocalDate;
import java.time.LocalTime;
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
public class Vol {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    @Column(nullable = false)
    private @NonNull LocalDate dateDepart;
    @NonNull
    @Column(nullable = false)
    private LocalTime heureDepart;
    @NonNull
    @Column(nullable = false)
    private LocalDate dateArrivee;
    @NonNull
    @Column(nullable = false)
    private LocalTime heureArrivee;
    @NonNull
    @Column(nullable = false)
    private Double prix;

    @ManyToMany
    @JoinTable(name = "Vol_Compagnie", joinColumns = @JoinColumn(name = "idVol"), inverseJoinColumns = @JoinColumn(name = "idCompagnie"))
    private List<Compagnie> listeCompagnie = new ArrayList<Compagnie>();

    @ManyToOne
    @JoinColumn(name = "idAeroportDepart", nullable = false)
    private Aeroport aeroportDepart;
    
    @ManyToOne
    @JoinColumn(name = "idAeroportArrivee", nullable = false)
    private Aeroport aeroportArrivee;
    
    //@JoinTable(name = "Escale", joinColumns = @JoinColumn(name = "idVol"), inverseJoinColumns = @JoinColumn(name = "idAeroport"))
    @OneToMany(targetEntity=Escale.class, mappedBy = "vol")
    private List<Escale> listeEscale = new ArrayList<Escale>();
    
    @OneToMany(targetEntity=Reservation.class, mappedBy = "vol")
    private List<Reservation> listeReservation = new ArrayList<Reservation>();
    
    
}
