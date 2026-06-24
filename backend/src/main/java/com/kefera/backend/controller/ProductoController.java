package com.kefera.backend.controller;
import com.kefera.backend.entity.Producto;
import com.kefera.backend.service.ProductoService;
import org.springframework.web.bind.annotation.*;
import com.kefera.backend.dto.ProductoDetalleDTO;
import java.util.ArrayList;

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

@GetMapping("/{id}/detalle")
public ProductoDetalleDTO obtenerDetalleProducto(
        @PathVariable Integer id) {

    Producto producto =
            service.obtenerEntidadPorId(id);

    if (producto == null) {
        return null;
    }

    ProductoDetalleDTO dto =
            new ProductoDetalleDTO();

    dto.setIdProducto(
            producto.getIdProducto());

    dto.setNombre(
            producto.getNombre());

    dto.setDescripcion(
            producto.getDescripcion());

    dto.setPrecio(
            producto.getPrecio());

    dto.setCalorias(
            producto.getCalorias());

    dto.setTiempoPreparacion(
            producto.getTiempoPreparacion());

    dto.setNivelPicante(
            producto.getNivelPicante());

    dto.setIngredientes(
            new ArrayList<>());

    dto.setAlergenos(
            new ArrayList<>());

    return dto;
}
}