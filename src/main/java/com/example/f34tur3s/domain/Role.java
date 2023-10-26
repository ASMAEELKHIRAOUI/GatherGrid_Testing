package com.example.f34tur3s.domain;

import jakarta.persistence.*;

@Entity
@Table(name="roles")
public class Role {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String role;

    public Role(){

    }
    public Role(int id, String role) {
        this.id = id;
        this.role = role;
    }
}
