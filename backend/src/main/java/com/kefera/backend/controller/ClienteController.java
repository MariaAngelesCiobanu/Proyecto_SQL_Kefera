package com.kefera.backend.controller;

import com.kefera.backend.entity.Cliente;
import com.kefera.backend.service.ClienteService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/clientes")
public class ClienteController {

    private final ClienteService service;

    public ClienteController(
            ClienteService service) {
        this.service = service;
    }

    @GetMapping
    public List<Cliente> obtenerClientes() {
        return service.obtenerTodos();
    }

    @GetMapping("/{id}")
    public Cliente obtenerCliente(
            @PathVariable Integer id) {

        return service.obtenerPorId(id);
    }
}