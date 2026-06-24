package com.kefera.backend.service;

import com.kefera.backend.entity.ProductoAlergeno;
import com.kefera.backend.repository.ProductoAlergenoRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductoAlergenoService {

    private final ProductoAlergenoRepository repository;

    public ProductoAlergenoService(
            ProductoAlergenoRepository repository) {
        this.repository = repository;
    }

    public List<ProductoAlergeno> obtenerTodos() {
        return repository.findAll();
    }

    public List<ProductoAlergeno> obtenerPorProducto(
            Integer idProducto) {

        return repository.findByIdProducto(idProducto);
    }
}