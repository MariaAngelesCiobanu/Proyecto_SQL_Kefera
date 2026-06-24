package com.kefera.backend.service;

import com.kefera.backend.entity.Pago;
import com.kefera.backend.repository.PagoRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PagoService {

    private final PagoRepository repository;

    public PagoService(
            PagoRepository repository) {
        this.repository = repository;
    }

    public List<Pago> obtenerTodos() {
        return repository.findAll();
    }

    public List<Pago> obtenerPorPedido(
            Integer idPedido) {

        return repository.findByIdPedido(idPedido);
    }

    public Pago guardar(Pago pago) {
        return repository.save(pago);
    }
}