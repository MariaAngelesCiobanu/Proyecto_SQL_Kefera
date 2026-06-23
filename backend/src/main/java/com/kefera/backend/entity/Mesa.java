package com.kefera.backend.entity;

import lombok.Getter;
import lombok.Setter;
import jakarta.persistence.*;

@Getter
@Setter
@Entity
@Table(name = "mesas", schema = "kefera")
public class Mesa {

    @Id
    @Column(name = "id_mesa")
    private Integer idMesa;

    @Column(name = "id_local")
    private Integer idLocal;

    @Column(name = "numero_mesa")
    private Integer numeroMesa;

    @Column(name = "capacidad")
    private Integer capacidad;

    @Column(name = "codigo_qr")
    private String codigoQr;

    @Column(name = "estado")
    private String estado;

    // getters y setters
}