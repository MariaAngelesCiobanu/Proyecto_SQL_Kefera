package com.kefera.backend.service;

import com.kefera.backend.entity.ProductoIngrediente;
import com.kefera.backend.repository.ProductoIngredienteRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductoIngredienteService {

    private final ProductoIngredienteRepository repository;

    public ProductoIngredienteService(
            ProductoIngredienteRepository repository) {
        this.repository = repository;
    }

    public List<ProductoIngrediente> obtenerTodos() {
        return repository.findAll();
    }

    public List<ProductoIngrediente> obtenerPorProducto(
            Integer idProducto) {

        return repository.findByIdProducto(idProducto);
    }
}