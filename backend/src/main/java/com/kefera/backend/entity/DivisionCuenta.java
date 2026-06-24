package com.kefera.backend.entity;

import jakarta.persistence.*;
import java.math.BigDecimal;

@Entity
@Table(name = "division_cuentas", schema = "kefera")
public class DivisionCuenta {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_division")
    private Integer idDivision;

    @Column(name = "id_pago")
    private Integer idPago;

    @Column(name = "nombre_persona")
    private String nombrePersona;

    @Column(name = "importe")
    private BigDecimal importe;

    public Integer getIdDivision() {
        return idDivision;
    }

    public void setIdDivision(Integer idDivision) {
        this.idDivision = idDivision;
    }

    public Integer getIdPago() {
        return idPago;
    }

    public void setIdPago(Integer idPago) {
        this.idPago = idPago;
    }

    public String getNombrePersona() {
        return nombrePersona;
    }

    public void setNombrePersona(String nombrePersona) {
        this.nombrePersona = nombrePersona;
    }

    public BigDecimal getImporte() {
        return importe;
    }

    public void setImporte(BigDecimal importe) {
        this.importe = importe;
    }
}