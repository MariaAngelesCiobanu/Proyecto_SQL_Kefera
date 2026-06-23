package com.kefera.backend.repository;

import java.util.List;
import com.kefera.backend.entity.Producto;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductoRepository
        extends JpaRepository<Producto, Integer> {

    List<Producto> findByIdCategoria(Integer idCategoria);
}