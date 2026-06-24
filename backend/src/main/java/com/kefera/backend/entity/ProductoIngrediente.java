package com.kefera.backend.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "producto_ingredientes", schema = "kefera")
public class ProductoIngrediente {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "id_producto")
    private Integer idProducto;

    @Column(name = "id_ingrediente")
    private Integer idIngrediente;

    @Column(name = "cantidad")
    private Double cantidad;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(Integer idProducto) {
        this.idProducto = idProducto;
    }

    public Integer getIdIngrediente() {
        return idIngrediente;
    }

    public void setIdIngrediente(Integer idIngrediente) {
        this.idIngrediente = idIngrediente;
    }

    public Double getCantidad() {
        return cantidad;
    }

    public void setCantidad(Double cantidad) {
        this.cantidad = cantidad;
    }
}