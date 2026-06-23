package com.kefera.backend.repository;

import com.kefera.backend.entity.Ingrediente;
import org.springframework.data.jpa.repository.JpaRepository;

public interface IngredienteRepository
        extends JpaRepository<Ingrediente, Integer> {
}