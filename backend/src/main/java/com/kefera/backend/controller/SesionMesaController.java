package com.kefera.backend.controller;

import com.kefera.backend.entity.SesionMesa;
import com.kefera.backend.service.SesionMesaService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/sesiones")
public class SesionMesaController {

    private final SesionMesaService service;

    public SesionMesaController(
            SesionMesaService service) {
        this.service = service;
    }

    @GetMapping
    public List<SesionMesa> obtenerSesiones() {
        return service.obtenerTodas();
    }

    @GetMapping("/{id}")
    public SesionMesa obtenerSesion(
            @PathVariable Integer id) {

        return service.obtenerPorId(id);
    }
}