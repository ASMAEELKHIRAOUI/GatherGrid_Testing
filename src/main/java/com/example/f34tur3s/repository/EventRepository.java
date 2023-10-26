package com.example.f34tur3s.repository;

import com.example.f34tur3s.domain.Event;
import com.mysql.cj.ServerVersion;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.persistence.TypedQuery;

import java.util.List;

public class EventRepository {
    private final EntityManagerFactory entityManagerFactory;
    public EventRepository(){
        entityManagerFactory = Persistence.createEntityManagerFactory("my-persistence-unit");
    }

    public Event save(Event event){
        EntityManager entityManager =entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        entityManager.persist(event);
        entityManager.getTransaction().commit();
        return event;
    }

    public Event update(Event event){
        EntityManager entityManager =entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        entityManager.merge(event);
        entityManager.getTransaction().commit();
        return event;
    }

    public Event delete(Event event) {
        EntityManager entityManager =entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();

        if (event.getId() != null) {
            entityManager.remove(event);
        }

        entityManager.getTransaction().commit();

        return event;
    }

    public Event find(long id){
        EntityManager entityManager =entityManagerFactory.createEntityManager();
        return entityManager.find(Event.class, id);
    }

    public List<Event> findAll(){
        EntityManager entityManager =entityManagerFactory.createEntityManager();
        String jpqlQuery = "SELECT e FROM Event e";
        TypedQuery<Event> query = entityManager.createQuery(jpqlQuery, Event.class);
        return query.getResultList();
    }

}
