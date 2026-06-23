package com.kefera.backend.entity;

import jakarta.persistence.*;
import java.math.BigDecimal;

@Entity
@Table(name = "extras", schema = "kefera")
public class Extra {

    @Id
    @Column(name = "id_extra")
    private Integer idExtra;

    @Column(name = "nombre")
    private String nombre;

    @Column(name = "precio_extra")
    private BigDecimal precioExtra;

    public Integer getIdExtra() {
        return idExtra;
    }

    public void setIdExtra(Integer idExtra) {
        this.idExtra = idExtra;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public BigDecimal getPrecioExtra() {
        return precioExtra;
    }

    public void setPrecioExtra(BigDecimal precioExtra) {
        this.precioExtra = precioExtra;
    }
}