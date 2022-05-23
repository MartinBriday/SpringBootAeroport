package com.intiformation.SpringBootAeroport.repository;

import javax.transaction.Transactional;

import com.intiformation.SpringBootAeroport.model.Vol;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Transactional
@Repository
public interface VolRepository extends JpaRepository<Vol, Integer> {


}
