package br.com.fiap.abctechapi.model;


import lombok.Data;

import javax.persistence.*;

@Entity
@Data
public class Assistance {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name", nullable = false, length = 100)
    private String name;

    @Column(name = "description", nullable = false, length = 300)
    private String description;

    @Column(name = "location", nullable = false, length = 50)
    private String locString;
}
