package com.kefera.backend.entity;

import jakarta.persistence.*;
import java.time.LocalDateTime;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "reservas", schema = "kefera")
public class Reserva {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    @Column(name = "id_reserva")
    private Integer idReserva;

    @Column(name = "id_cliente")
    private Integer idCliente;

    @Column(name = "id_mesa")
    private Integer idMesa;

    @Column(name = "fecha_reserva")
    private LocalDateTime fechaReserva;

    @Column(name = "num_personas")
    private Integer numPersonas;

    @Column(name = "estado")
    private String estado;

    @Column(name = "observaciones")
    private String observaciones;

    // getters y setters
}