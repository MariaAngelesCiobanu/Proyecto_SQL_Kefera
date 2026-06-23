package com.kefera.backend.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import java.math.BigDecimal;

@Getter
@Setter
@Entity
@Table(name = "productos", schema = "kefera")
public class Producto {

    @Id
    @Column(name = "id_producto")
    private Integer idProducto;

    @Column(name = "id_categoria")
    private Integer idCategoria;

    @Column(name = "id_subcategoria")
    private Integer idSubcategoria;

    @Column(name = "nombre")
    private String nombre;

    @Column(name = "descripcion")
    private String descripcion;

    @Column(name = "historia_egipcia")
    private String historiaEgipcia;

    @Column(name = "beneficios")
    private String beneficios;

    @Column(name = "precio")
    private BigDecimal precio;

    @Column(name = "imagen_principal")
    private String imagenPrincipal;

    @Column(name = "calorias")
    private Integer calorias;

    @Column(name = "tiempo_preparacion")
    private Integer tiempoPreparacion;

    @Column(name = "nivel_picante")
    private Integer nivelPicante;

    @Column(name = "activo")
    private Boolean activo;

    // getters y setters
}