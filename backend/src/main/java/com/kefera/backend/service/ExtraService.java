package com.kefera.backend.service;

import com.kefera.backend.entity.Extra;
import com.kefera.backend.repository.ExtraRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ExtraService {

    private final ExtraRepository repository;

    public ExtraService(
            ExtraRepository repository) {
        this.repository = repository;
    }

    public List<Extra> obtenerTodos() {
        return repository.findAll();
    }
}