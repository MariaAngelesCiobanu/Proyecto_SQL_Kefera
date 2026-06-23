package com.kefera.backend.repository;

import com.kefera.backend.entity.Mesa;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface MesaRepository
        extends JpaRepository<Mesa, Integer> {

    Optional<Mesa> findByCodigoQr(String codigoQr);
}