package com.kefera.backend.service;

import com.kefera.backend.entity.Ingrediente;
import com.kefera.backend.repository.IngredienteRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class IngredienteService {

    private final IngredienteRepository repository;

    public IngredienteService(
            IngredienteRepository repository) {
        this.repository = repository;
    }

    public List<Ingrediente> obtenerTodos() {
        return repository.findAll();
    }

    public Ingrediente obtenerPorId(Integer id) {
        return repository.findById(id)
                .orElse(null);
    }
}