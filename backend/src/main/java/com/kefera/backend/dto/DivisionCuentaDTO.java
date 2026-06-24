package com.kefera.backend.dto;

import java.math.BigDecimal;

public class DivisionCuentaDTO {

    private String nombrePersona;
    private BigDecimal importe;

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