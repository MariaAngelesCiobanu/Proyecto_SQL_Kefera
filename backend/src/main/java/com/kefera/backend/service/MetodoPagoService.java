package com.kefera.backend.service;

import com.kefera.backend.entity.MetodoPago;
import com.kefera.backend.repository.MetodoPagoRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MetodoPagoService {

    private final MetodoPagoRepository repository;

    public MetodoPagoService(
            MetodoPagoRepository repository) {
        this.repository = repository;
    }

    public List<MetodoPago> obtenerTodos() {
        return repository.findAll();
    }
}