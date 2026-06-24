package com.kefera.backend.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "metodos_pago", schema = "kefera")
public class MetodoPago {

    @Id
    @Column(name = "id_metodo")
    private Integer idMetodoPago;

    @Column(name = "nombre")
    private String nombre;

    public Integer getIdMetodoPago() {
        return idMetodoPago;
    }

    public void setIdMetodoPago(Integer idMetodoPago) {
        this.idMetodoPago = idMetodoPago;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
}