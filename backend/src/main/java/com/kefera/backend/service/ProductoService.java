package com.kefera.backend.service;

import com.kefera.backend.entity.Producto;
import com.kefera.backend.repository.ProductoRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductoService {

    private final ProductoRepository repository;

    public ProductoService(ProductoRepository repository) {
        this.repository = repository;
    }

    public List<Producto> obtenerTodos() {
        return repository.findAll();
    }

    public List<Producto> obtenerPorCategoria(Integer idCategoria) {
        return repository.findByIdCategoria(idCategoria);
    }

    public Producto obtenerPorId(Integer id) {
        return repository.findById(id)
                .orElse(null);
    }
}
