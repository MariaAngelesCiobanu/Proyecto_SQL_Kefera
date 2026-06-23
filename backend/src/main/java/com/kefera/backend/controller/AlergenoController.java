package com.kefera.backend.controller;

import com.kefera.backend.entity.Alergeno;
import com.kefera.backend.service.AlergenoService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/alergenos")
public class AlergenoController {

    private final AlergenoService service;

    public AlergenoController(
            AlergenoService service) {
        this.service = service;
    }

    @GetMapping
    public List<Alergeno> obtenerAlergenos() {
        return service.obtenerTodos();
    }
}