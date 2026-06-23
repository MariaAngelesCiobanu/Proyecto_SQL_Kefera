package com.kefera.backend.entity;

import jakarta.persistence.*;
import java.time.LocalDateTime;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "pedidos", schema = "kefera")
public class Pedido {

    @Id
    @Column(name = "id_pedido")
    private Integer idPedido;

    @Column(name = "id_sesion")
    private Integer idSesion;

    @Column(name = "id_cliente")
    private Integer idCliente;

    @Column(name = "id_estado")
    private Integer idEstado;

    @Column(name = "fecha_pedido")
    private LocalDateTime fechaPedido;

    // getters y setters
}