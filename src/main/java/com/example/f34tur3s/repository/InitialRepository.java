package com.example.f34tur3s.repository;

import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class InitialRepository {
    private final EntityManagerFactory entityManagerFactory;

    public InitialRepository() {
        entityManagerFactory = Persistence.createEntityManagerFactory("my-persistence-unit");
    }
    
}
