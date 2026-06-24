package com.kefera.backend.repository;

import com.kefera.backend.entity.ProductoIngrediente;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ProductoIngredienteRepository
        extends JpaRepository<ProductoIngrediente, Integer> {

    List<ProductoIngrediente> findByIdProducto(Integer idProducto);
}