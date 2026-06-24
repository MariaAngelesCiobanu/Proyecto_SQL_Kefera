package com.kefera.backend.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "imagenes_producto", schema = "kefera")
public class ImagenProducto {

    @Id
    @Column(name = "id_imagen")
    private Integer idImagen;

    @Column(name = "id_producto")
    private Integer idProducto;

    @Column(name = "url_imagen")
    private String urlImagen;

    @Column(name = "principal")
    private Boolean principal;

    @Column(name = "orden")
    private Integer orden;

    public Integer getIdImagen() {
        return idImagen;
    }

    public void setIdImagen(Integer idImagen) {
        this.idImagen = idImagen;
    }

    public Integer getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(Integer idProducto) {
        this.idProducto = idProducto;
    }

    public String getUrlImagen() {
        return urlImagen;
    }

    public void setUrlImagen(String urlImagen) {
        this.urlImagen = urlImagen;
    }

    public Boolean getPrincipal() {
        return principal;
    }

    public void setPrincipal(Boolean principal) {
        this.principal = principal;
    }

    public Integer getOrden() {
        return orden;
    }

    public void setOrden(Integer orden) {
        this.orden = orden;
    }
}