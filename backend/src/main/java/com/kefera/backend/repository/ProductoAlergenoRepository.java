package com.kefera.backend.repository;

import com.kefera.backend.entity.ProductoAlergeno;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ProductoAlergenoRepository
        extends JpaRepository<ProductoAlergeno, Integer> {

    List<ProductoAlergeno> findByIdProducto(Integer idProducto);
}