package com.kefera.backend.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "alergenos", schema = "kefera")
public class Alergeno {

    @Id
    @Column(name = "id_alergeno")
    private Integer idAlergeno;

    @Column(name = "nombre")
    private String nombre;

    public Integer getIdAlergeno() {
        return idAlergeno;
    }

    public void setIdAlergeno(Integer idAlergeno) {
        this.idAlergeno = idAlergeno;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
}