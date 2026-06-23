package com.kefera.backend.service;

import com.kefera.backend.entity.SesionMesa;
import com.kefera.backend.repository.SesionMesaRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SesionMesaService {

    private final SesionMesaRepository repository;

    public SesionMesaService(
            SesionMesaRepository repository) {
        this.repository = repository;
    }

    public List<SesionMesa> obtenerTodas() {
        return repository.findAll();
    }

    public SesionMesa obtenerPorId(Integer id) {
        return repository.findById(id)
                .orElse(null);
    }
}