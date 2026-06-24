package com.kefera.backend.controller;

import com.kefera.backend.entity.ProductoIngrediente;
import com.kefera.backend.service.ProductoIngredienteService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/producto-ingredientes")
public class ProductoIngredienteController {

    private final ProductoIngredienteService service;

    public ProductoIngredienteController(
            ProductoIngredienteService service) {
        this.service = service;
    }

    @GetMapping
    public List<ProductoIngrediente> obtenerTodos() {
        return service.obtenerTodos();
    }

    @GetMapping("/producto/{id}")
    public List<ProductoIngrediente> obtenerPorProducto(
            @PathVariable Integer id) {

        return service.obtenerPorProducto(id);
    }
}