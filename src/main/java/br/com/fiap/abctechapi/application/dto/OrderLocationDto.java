package br.com.fiap.abctechapi.application.dto;

import lombok.Data;

@Data
public class OrderLocationDto {
    private Double longitude;
    private Double latitude;
    private Data dateTime;
}
