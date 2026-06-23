package com.kefera.backend.service;

import com.kefera.backend.entity.Mesa;
import com.kefera.backend.repository.MesaRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MesaService {

    private final MesaRepository repository;

    public MesaService(MesaRepository repository) {
        this.repository = repository;
    }

    public List<Mesa> obtenerTodas() {
        return repository.findAll();
    }

    public Mesa obtenerPorId(Integer id) {
        return repository.findById(id)
                .orElse(null);
    }
    public Mesa obtenerPorQr(String codigoQr) {

    return repository.findByCodigoQr(codigoQr)
            .orElse(null);
}
}