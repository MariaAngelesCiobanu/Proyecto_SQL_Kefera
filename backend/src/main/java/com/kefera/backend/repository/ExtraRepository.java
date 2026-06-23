package com.kefera.backend.repository;

import com.kefera.backend.entity.Extra;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ExtraRepository
        extends JpaRepository<Extra, Integer> {
}