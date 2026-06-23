package com.kefera.backend.controller;

import com.kefera.backend.entity.Mesa;
import com.kefera.backend.service.MesaService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/mesas")
public class MesaController {

    private final MesaService service;

    public MesaController(MesaService service) {
        this.service = service;
    }

    @GetMapping
    public List<Mesa> obtenerMesas() {
        return service.obtenerTodas();
    }

    @GetMapping("/{id}")
    public Mesa obtenerMesa(
            @PathVariable Integer id) {

        return service.obtenerPorId(id);
    }
    @GetMapping("/qr/{codigo}")
public Mesa obtenerMesaPorQr(
        @PathVariable String codigo) {

    return service.obtenerPorQr(codigo);
}
}