package com.example.f34tur3s.repository;

import com.example.f34tur3s.domain.Event;
import com.example.f34tur3s.domain.Ticket;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.persistence.Query;

import java.util.List;

public class TicketRepository {
    private final EntityManagerFactory emf;

    public TicketRepository() {
        emf = Persistence.createEntityManagerFactory("my-persistence-unit");
    }

    public List<Ticket> getAllTicket(){
        EntityManager entityManager = emf.createEntityManager();
        return entityManager.createQuery("SELECT t FROM Ticket t", Ticket.class).getResultList();
    }

    public Ticket findTicketById(Ticket ticket){
        EntityManager entityManager = emf.createEntityManager();
        return entityManager.find(Ticket.class, ticket.getId());
    }

    public Ticket addTicket(Ticket ticket){
        EntityManager em = emf.createEntityManager();
        em.getTransaction().begin();
        em.persist(ticket);
        em.getTransaction().commit();
        em.close();
        return ticket;
    }

    public Integer checkTicketAvailability(Event event){
        EntityManager em = emf.createEntityManager();
        String count = "SELECT COUNT(t) " +
                "FROM Ticket t " +
                "WHERE t.event.id = :eventID";
        Query query = em.createQuery(count);
        query.setParameter("eventID", event.getId());
        Long totalCount = (Long) query.getSingleResult();
        return totalCount.intValue();
    }
}
