package com.kefera.backend.controller;

import com.kefera.backend.entity.Producto;
import com.kefera.backend.service.ProductoService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/productos")
public class ProductoController {

    private final ProductoService service;

    public ProductoController(
            ProductoService service) {
        this.service = service;
    }

    @GetMapping
    public List<Producto> obtenerProductos() {
        return service.obtenerTodos();
    }
    @GetMapping("/categoria/{id}")
    public List<Producto> obtenerPorCategoria(
            @PathVariable Integer id) {

    return service.obtenerPorCategoria(id);
}

@GetMapping("/{id}")
public Producto obtenerProducto(
        @PathVariable Integer id) {

    return service.obtenerPorId(id);
}
}