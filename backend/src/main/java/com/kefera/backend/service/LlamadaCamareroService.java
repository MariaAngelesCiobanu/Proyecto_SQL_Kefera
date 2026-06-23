package com.kefera.backend.service;

import com.kefera.backend.entity.LlamadaCamarero;
import com.kefera.backend.repository.LlamadaCamareroRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LlamadaCamareroService {

    private final LlamadaCamareroRepository repository;

    public LlamadaCamareroService(
            LlamadaCamareroRepository repository) {
        this.repository = repository;
    }

    public List<LlamadaCamarero> obtenerTodas() {
        return repository.findAll();
    }

    public LlamadaCamarero obtenerPorId(Integer id) {
        return repository.findById(id)
                .orElse(null);
    }

    public LlamadaCamarero guardar(
        LlamadaCamarero llamada) {

    return repository.save(llamada);
}
}