package com.kefera.backend.repository;

import com.kefera.backend.entity.ImagenProducto;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ImagenProductoRepository
        extends JpaRepository<ImagenProducto, Integer> {

    List<ImagenProducto> findByIdProducto(Integer idProducto);
}