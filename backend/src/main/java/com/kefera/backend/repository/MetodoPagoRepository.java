package com.kefera.backend.repository;

import com.kefera.backend.entity.MetodoPago;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MetodoPagoRepository
        extends JpaRepository<MetodoPago, Integer> {
}