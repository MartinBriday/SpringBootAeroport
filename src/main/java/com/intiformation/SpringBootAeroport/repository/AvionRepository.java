package com.intiformation.SpringBootAeroport.repository;

import javax.transaction.Transactional;

import com.intiformation.SpringBootAeroport.model.Avion;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
@Transactional
public interface AvionRepository extends JpaRepository<Avion, Integer> {

}
