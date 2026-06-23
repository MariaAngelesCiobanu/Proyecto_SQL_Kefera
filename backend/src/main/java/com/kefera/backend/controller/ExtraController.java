package com.kefera.backend.controller;

import com.kefera.backend.entity.Extra;
import com.kefera.backend.service.ExtraService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/extras")
public class ExtraController {

    private final ExtraService service;

    public ExtraController(
            ExtraService service) {
        this.service = service;
    }

    @GetMapping
    public List<Extra> obtenerExtras() {
        return service.obtenerTodos();
    }
}