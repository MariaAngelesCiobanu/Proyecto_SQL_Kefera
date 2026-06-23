package com.kefera.backend.entity;

import jakarta.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "llamadas_camarero", schema = "kefera")
public class LlamadaCamarero {

@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
@Column(name = "id_llamada")
private Integer idLlamada;

    @Column(name = "id_sesion")
    private Integer idSesion;

    @Column(name = "tipo")
    private String tipo;

    @Column(name = "fecha_llamada")
    private LocalDateTime fechaLlamada;

    @Column(name = "atendida")
    private Boolean atendida;

    public Integer getIdLlamada() {
        return idLlamada;
    }

    public void setIdLlamada(Integer idLlamada) {
        this.idLlamada = idLlamada;
    }

    public Integer getIdSesion() {
        return idSesion;
    }

    public void setIdSesion(Integer idSesion) {
        this.idSesion = idSesion;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public LocalDateTime getFechaLlamada() {
        return fechaLlamada;
    }

    public void setFechaLlamada(LocalDateTime fechaLlamada) {
        this.fechaLlamada = fechaLlamada;
    }

    public Boolean getAtendida() {
        return atendida;
    }

    public void setAtendida(Boolean atendida) {
        this.atendida = atendida;
    }
}