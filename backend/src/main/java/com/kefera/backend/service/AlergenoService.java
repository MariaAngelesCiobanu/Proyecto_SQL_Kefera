package com.kefera.backend.service;

import com.kefera.backend.entity.Alergeno;
import com.kefera.backend.repository.AlergenoRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AlergenoService {

    private final AlergenoRepository repository;

    public AlergenoService(
            AlergenoRepository repository) {
        this.repository = repository;
    }

    public List<Alergeno> obtenerTodos() {
        return repository.findAll();
    }
}