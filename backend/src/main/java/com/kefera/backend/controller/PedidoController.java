package com.kefera.backend.controller;

import com.kefera.backend.entity.Pedido;
import com.kefera.backend.service.PedidoService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/pedidos")
public class PedidoController {

    private final PedidoService service;

    public PedidoController(
            PedidoService service) {
        this.service = service;
    }

    @GetMapping
    public List<Pedido> obtenerPedidos() {
        return service.obtenerTodos();
    }

    @GetMapping("/{id}")
    public Pedido obtenerPedido(
            @PathVariable Integer id) {

        return service.obtenerPorId(id);
    }
}