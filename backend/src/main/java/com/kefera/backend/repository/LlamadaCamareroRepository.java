package com.kefera.backend.repository;

import com.kefera.backend.entity.LlamadaCamarero;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LlamadaCamareroRepository
        extends JpaRepository<LlamadaCamarero, Integer> {
}