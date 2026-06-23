package com.kefera.backend.controller;

import com.kefera.backend.entity.Reserva;
import com.kefera.backend.service.ReservaService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/reservas")
public class ReservaController {

    private final ReservaService service;

    public ReservaController(
            ReservaService service) {
        this.service = service;
    }

    @GetMapping
    public List<Reserva> obtenerReservas() {
        return service.obtenerTodas();
    }

    @GetMapping("/{id}")
    public Reserva obtenerReserva(
            @PathVariable Integer id) {

        return service.obtenerPorId(id);
    }

    @PostMapping
public Reserva crearReserva(
        @RequestBody Reserva reserva) {

    return service.guardar(reserva);
}
}