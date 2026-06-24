package com.kefera.backend.service;

import com.kefera.backend.entity.DivisionCuenta;
import com.kefera.backend.repository.DivisionCuentaRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DivisionCuentaService {

    private final DivisionCuentaRepository repository;

    public DivisionCuentaService(
            DivisionCuentaRepository repository) {
        this.repository = repository;
    }

    public List<DivisionCuenta> obtenerTodas() {
        return repository.findAll();
    }

    public List<DivisionCuenta> obtenerPorPago(
            Integer idPago) {

        return repository.findByIdPago(idPago);
    }

    public DivisionCuenta guardar(
            DivisionCuenta division) {

        return repository.save(division);
    }
}