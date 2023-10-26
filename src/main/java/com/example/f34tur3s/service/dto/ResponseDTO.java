package com.example.f34tur3s.service.dto;

public class ResponseDTO {
    public ResponseStatus status;
    public String message;
    public Object data;

    public ResponseDTO(ResponseStatus status, String message) {
        this.status = status;
        this.message = message;
    }

    public ResponseDTO(ResponseStatus status, String message, Object data) {
        this.status = status;
        this.message = message;
        this.data = data;
    }
}
