package com.kefera.backend.service;

import com.kefera.backend.entity.Cliente;
import com.kefera.backend.repository.ClienteRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ClienteService {

    private final ClienteRepository repository;

    public ClienteService(
            ClienteRepository repository) {
        this.repository = repository;
    }

    public List<Cliente> obtenerTodos() {
        return repository.findAll();
    }

    public Cliente obtenerPorId(Integer id) {
        return repository.findById(id)
                .orElse(null);
    }
}