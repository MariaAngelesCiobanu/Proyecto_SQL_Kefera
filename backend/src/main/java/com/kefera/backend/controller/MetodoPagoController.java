package com.kefera.backend.controller;

import com.kefera.backend.entity.MetodoPago;
import com.kefera.backend.service.MetodoPagoService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/metodos-pago")
public class MetodoPagoController {

    private final MetodoPagoService service;

    public MetodoPagoController(
            MetodoPagoService service) {
        this.service = service;
    }

    @GetMapping
    public List<MetodoPago> obtenerMetodosPago() {
        return service.obtenerTodos();
    }
}