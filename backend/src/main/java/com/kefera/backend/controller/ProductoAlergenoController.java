package com.kefera.backend.controller;

import com.kefera.backend.entity.ProductoAlergeno;
import com.kefera.backend.service.ProductoAlergenoService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/producto-alergenos")
public class ProductoAlergenoController {

    private final ProductoAlergenoService service;

    public ProductoAlergenoController(
            ProductoAlergenoService service) {
        this.service = service;
    }

    @GetMapping
    public List<ProductoAlergeno> obtenerTodos() {
        return service.obtenerTodos();
    }

    @GetMapping("/producto/{id}")
    public List<ProductoAlergeno> obtenerPorProducto(
            @PathVariable Integer id) {

        return service.obtenerPorProducto(id);
    }
}