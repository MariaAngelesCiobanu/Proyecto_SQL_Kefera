package com.kefera.backend.entity;

import jakarta.persistence.*;
import java.math.BigDecimal;
import java.time.LocalDateTime;

@Entity
@Table(name = "pagos", schema = "kefera")
public class Pago {

    @Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
@Column(name = "id_pago")
private Integer idPago;

    @Column(name = "id_pedido")
    private Integer idPedido;

    @Column(name = "id_metodo")
    private Integer idMetodo;

    @Column(name = "importe")
    private BigDecimal importe;

    @Column(name = "fecha_pago")
    private LocalDateTime fechaPago;

    // getters y setters
}