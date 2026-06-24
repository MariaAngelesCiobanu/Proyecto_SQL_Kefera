package com.kefera.backend.dto;

import java.math.BigDecimal;
import java.util.List;

public class PedidoDTO {
    private Integer idPedido;
    private String estado;
    private BigDecimal total;
    private List<String> productos;
}
