package com.kefera.backend.service;

import com.kefera.backend.entity.ImagenProducto;
import com.kefera.backend.repository.ImagenProductoRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ImagenProductoService {

    private final ImagenProductoRepository repository;

    public ImagenProductoService(
            ImagenProductoRepository repository) {
        this.repository = repository;
    }

    public List<ImagenProducto> obtenerTodas() {
        return repository.findAll();
    }

    public List<ImagenProducto> obtenerPorProducto(
            Integer idProducto) {

        return repository.findByIdProducto(idProducto);
    }
}