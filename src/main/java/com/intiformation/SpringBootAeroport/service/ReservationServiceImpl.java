package com.intiformation.SpringBootAeroport.service;

import java.util.List;

import com.intiformation.SpringBootAeroport.model.Reservation;
import com.intiformation.SpringBootAeroport.repository.ReservationRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReservationServiceImpl implements ReservationService {

    @Autowired
    ReservationRepository reservationRepository;

	@Override
	public List<Reservation> get() {
		return reservationRepository.findAll();
	}

	@Override
	public Reservation get(int id) {
		return reservationRepository.getById(id);
	}

	@Override
	public void save(Reservation r) {
		reservationRepository.save(r);
		
	}

	@Override
	public void delete(int id) {
		reservationRepository.deleteById(id);
		
	}

	@Override
	public void update(Reservation r) {
		reservationRepository.save(r);
		
	}

}
