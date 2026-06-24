package com.kefera.backend.repository;

import com.kefera.backend.entity.DetallePedido;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface DetallePedidoRepository
        extends JpaRepository<DetallePedido, Integer> {

    List<DetallePedido> findByIdPedido(Integer idPedido);
}