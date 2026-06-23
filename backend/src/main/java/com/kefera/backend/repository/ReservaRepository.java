package com.kefera.backend.repository;

import com.kefera.backend.entity.Reserva;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ReservaRepository
        extends JpaRepository<Reserva, Integer> {
}