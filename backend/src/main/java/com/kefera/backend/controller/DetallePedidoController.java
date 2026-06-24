package com.kefera.backend.controller;

import com.kefera.backend.entity.DetallePedido;
import com.kefera.backend.service.DetallePedidoService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/detalles-pedido")
public class DetallePedidoController {

    private final DetallePedidoService service;

    public DetallePedidoController(
            DetallePedidoService service) {
        this.service = service;
    }

    @GetMapping
    public List<DetallePedido> obtenerTodos() {
        return service.obtenerTodos();
    }

    @GetMapping("/pedido/{id}")
    public List<DetallePedido> obtenerPorPedido(
            @PathVariable Integer id) {

        return service.obtenerPorPedido(id);
    }
}