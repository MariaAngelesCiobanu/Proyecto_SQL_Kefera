package com.kefera.backend.service;

import com.kefera.backend.entity.Reserva;
import com.kefera.backend.repository.ReservaRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReservaService {

    private final ReservaRepository repository;

    public ReservaService(
            ReservaRepository repository) {
        this.repository = repository;
    }

    public List<Reserva> obtenerTodas() {
        return repository.findAll();
    }

    public Reserva obtenerPorId(Integer id) {
        return repository.findById(id)
                .orElse(null);
    }

    public Reserva guardar(
        Reserva reserva) {

    return repository.save(reserva);
}
}