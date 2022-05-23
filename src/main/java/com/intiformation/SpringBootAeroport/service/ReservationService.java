package com.intiformation.SpringBootAeroport.service;

import java.util.List;

import com.intiformation.SpringBootAeroport.model.Reservation;

public interface ReservationService {

    List<Reservation> get();
    Reservation get(int id);
    public void save(Reservation r);
    public void delete(int id);
    public void update(Reservation r);

}
