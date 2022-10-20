package br.com.fiap.abctechapi.handler.exception;



import lombok.Getter;



@Getter
public class FieldNotFoundException extends RuntimeException{
    private String description;



    public FieldNotFoundException(String message, String description){
        super(message);
        this.description = description;
    }



}