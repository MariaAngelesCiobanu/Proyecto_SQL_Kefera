package com.kefera.backend.repository;

import com.kefera.backend.entity.SesionMesa;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SesionMesaRepository
        extends JpaRepository<SesionMesa, Integer> {
}