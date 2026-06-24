package com.kefera.backend.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "producto_alergenos", schema = "kefera")
public class ProductoAlergeno {

    @Id
    @Column(name = "id_producto")
    private Integer idProducto;

    @Column(name = "id_alergeno")
    private Integer idAlergeno;

    public Integer getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(Integer idProducto) {
        this.idProducto = idProducto;
    }

    public Integer getIdAlergeno() {
        return idAlergeno;
    }

    public void setIdAlergeno(Integer idAlergeno) {
        this.idAlergeno = idAlergeno;
    }
}