package com.kefera.backend.controller;

import com.kefera.backend.entity.ImagenProducto;
import com.kefera.backend.service.ImagenProductoService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/imagenes")
public class ImagenProductoController {

    private final ImagenProductoService service;

    public ImagenProductoController(
            ImagenProductoService service) {
        this.service = service;
    }

    @GetMapping
    public List<ImagenProducto> obtenerTodas() {
        return service.obtenerTodas();
    }

    @GetMapping("/producto/{id}")
    public List<ImagenProducto> obtenerPorProducto(
            @PathVariable Integer id) {

        return service.obtenerPorProducto(id);
    }
}