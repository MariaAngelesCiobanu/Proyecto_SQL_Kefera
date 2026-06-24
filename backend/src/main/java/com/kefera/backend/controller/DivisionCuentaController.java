package com.kefera.backend.controller;

import com.kefera.backend.entity.DivisionCuenta;
import com.kefera.backend.service.DivisionCuentaService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/divisiones")
public class DivisionCuentaController {

    private final DivisionCuentaService service;

    public DivisionCuentaController(
            DivisionCuentaService service) {
        this.service = service;
    }

    @GetMapping
    public List<DivisionCuenta> obtenerTodas() {
        return service.obtenerTodas();
    }

    @GetMapping("/pago/{id}")
    public List<DivisionCuenta> obtenerPorPago(
            @PathVariable Integer id) {

        return service.obtenerPorPago(id);
    }

    @PostMapping
    public DivisionCuenta crearDivision(
            @RequestBody DivisionCuenta division) {

        return service.guardar(division);
    }
}