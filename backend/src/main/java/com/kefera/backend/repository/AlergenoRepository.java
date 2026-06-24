package com.kefera.backend.repository;
import com.kefera.backend.entity.Alergeno;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AlergenoRepository
        extends JpaRepository<Alergeno, Integer> {
}