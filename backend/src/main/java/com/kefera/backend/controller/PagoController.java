package com.kefera.backend.controller;

import com.kefera.backend.entity.Pago;
import com.kefera.backend.service.PagoService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/pagos")
public class PagoController {

    private final PagoService service;

    public PagoController(
            PagoService service) {
        this.service = service;
    }

    @GetMapping
    public List<Pago> obtenerTodos() {
        return service.obtenerTodos();
    }

    @GetMapping("/pedido/{id}")
    public List<Pago> obtenerPorPedido(
            @PathVariable Integer id) {

        return service.obtenerPorPedido(id);
    }

    @PostMapping
    public Pago crearPago(
            @RequestBody Pago pago) {

        return service.guardar(pago);
    }
}