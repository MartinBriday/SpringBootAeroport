package com.intiformation.SpringBootAeroport.service;

import java.util.List;

import com.intiformation.SpringBootAeroport.model.Vol;

public interface VolService {

    List<Vol> get();
    Vol get(int id);
    public void save(Vol v);
    public void delete(int id);
    public void update(Vol v);

}
