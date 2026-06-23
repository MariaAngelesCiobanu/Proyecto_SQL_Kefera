package com.kefera.backend.service;

import com.kefera.backend.entity.Pedido;
import com.kefera.backend.repository.PedidoRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PedidoService {

    private final PedidoRepository repository;

    public PedidoService(
            PedidoRepository repository) {
        this.repository = repository;
    }

    public List<Pedido> obtenerTodos() {
        return repository.findAll();
    }

    public Pedido obtenerPorId(Integer id) {
        return repository.findById(id)
                .orElse(null);
    }
}