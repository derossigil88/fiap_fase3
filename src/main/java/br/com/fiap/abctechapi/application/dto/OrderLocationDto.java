package br.com.fiap.abctechapi.application.dto;

import lombok.Data;

import java.util.Date;

@Data
public class OrderLocationDto {
    private Double longitude;
    private Double latitude;
    private Date dateTime;
}
