package com.intiformation.SpringBootAeroport.repository;

import com.intiformation.SpringBootAeroport.model.Bagage;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BagageRepository extends JpaRepository<Bagage, Integer> {

}
