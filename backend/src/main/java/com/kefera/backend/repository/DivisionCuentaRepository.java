package com.kefera.backend.repository;

import com.kefera.backend.entity.DivisionCuenta;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface DivisionCuentaRepository
        extends JpaRepository<DivisionCuenta, Integer> {

    List<DivisionCuenta> findByIdPago(Integer idPago);
}