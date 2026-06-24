package com.kefera.backend.service;

import com.kefera.backend.entity.DetallePedido;
import com.kefera.backend.repository.DetallePedidoRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DetallePedidoService {

    private final DetallePedidoRepository repository;

    public DetallePedidoService(
            DetallePedidoRepository repository) {
        this.repository = repository;
    }

    public List<DetallePedido> obtenerTodos() {
        return repository.findAll();
    }

    public List<DetallePedido> obtenerPorPedido(
            Integer idPedido) {

        return repository.findByIdPedido(idPedido);
    }
}