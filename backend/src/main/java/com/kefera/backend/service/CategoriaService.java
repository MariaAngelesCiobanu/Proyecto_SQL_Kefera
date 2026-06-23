package com.kefera.backend.service;

import com.kefera.backend.entity.Categoria;
import com.kefera.backend.repository.CategoriaRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoriaService {

    private final CategoriaRepository repository;

    public CategoriaService(
            CategoriaRepository repository) {
        this.repository = repository;
    }

    public List<Categoria> obtenerTodas() {
        return repository.findAll();
    }
}