package com.kefera.backend.controller;

import com.kefera.backend.entity.Ingrediente;
import com.kefera.backend.service.IngredienteService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/ingredientes")
public class IngredienteController {

    private final IngredienteService service;

    public IngredienteController(
            IngredienteService service) {
        this.service = service;
    }

    @GetMapping
    public List<Ingrediente> obtenerIngredientes() {
        return service.obtenerTodos();
    }

    @GetMapping("/{id}")
    public Ingrediente obtenerIngrediente(
            @PathVariable Integer id) {

        return service.obtenerPorId(id);
    }
}