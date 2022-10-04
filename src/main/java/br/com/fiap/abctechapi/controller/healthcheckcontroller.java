package br.com.fiap.abctechapi.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/")
public class healthcheckcontroller {

    @GetMapping()
    public ResponseEntity <Object> Status(){

        return ResponseEntity.ok().build();
    }
}
