package com.kefera.backend.controller;

import com.kefera.backend.dto.RecomendacionDTO;
import com.kefera.backend.entity.Producto;
import com.kefera.backend.service.ProductoService;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/api/recomendaciones")
public class RecomendacionController {

    private final ProductoService productoService;

    public RecomendacionController(
            ProductoService productoService) {

        this.productoService = productoService;
    }

    @GetMapping("/{id}")
    public List<RecomendacionDTO> recomendar(
            @PathVariable Integer id) {

        Producto productoBase =
                productoService.obtenerEntidadPorId(id);

        List<RecomendacionDTO> resultado =
                new ArrayList<>();

        if (productoBase == null) {
            return resultado;
        }

        List<Producto> productos =
                productoService.obtenerTodos();

        for (Producto producto : productos) {

            if (producto.getIdProducto()
                    .equals(id)) {
                continue;
            }

            RecomendacionDTO dto =
                    new RecomendacionDTO();

            dto.setIdProducto(
                    producto.getIdProducto());

            dto.setNombre(
                    producto.getNombre());

            dto.setPrecio(
                    producto.getPrecio());

            dto.setMotivo(
                    "Producto recomendado");

            resultado.add(dto);

            if (resultado.size() >= 3) {
                break;
            }
        }

        return resultado;
    }
}