package br.com.fiap.abctechapi.handler.exception;



import lombok.Getter;



@Getter
public class AssistNotFoundException extends RuntimeException{
    private String description;



    public AssistNotFoundException(String message, String description){
        super(message);
        this.description = description;
    }



}