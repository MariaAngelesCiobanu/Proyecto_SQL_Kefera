package com.kefera.backend.controller;

import com.kefera.backend.entity.LlamadaCamarero;
import com.kefera.backend.service.LlamadaCamareroService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/llamadas")
public class LlamadaCamareroController {

    private final LlamadaCamareroService service;

    public LlamadaCamareroController(
            LlamadaCamareroService service) {
        this.service = service;
    }

    @GetMapping
    public List<LlamadaCamarero> obtenerLlamadas() {
        return service.obtenerTodas();
    }

    @GetMapping("/{id}")
    public LlamadaCamarero obtenerLlamada(
            @PathVariable Integer id) {

        return service.obtenerPorId(id);
    }
    @PostMapping
public LlamadaCamarero crearLlamada(
        @RequestBody LlamadaCamarero llamada) {

    return service.guardar(llamada);
} 
}