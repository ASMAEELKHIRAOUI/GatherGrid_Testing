package com.example.f34tur3s.repository;

import com.example.f34tur3s.domain.Comment;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

import java.util.ArrayList;
import java.util.List;

public class CommentRepository {

    private final EntityManagerFactory entityManagerFactory;
    public CommentRepository(){
        entityManagerFactory= Persistence.createEntityManagerFactory("my-persistence-unit");
    }

    public List<Comment> getAllComments() {
        EntityManager em = entityManagerFactory.createEntityManager();
        return em.createQuery("SELECT c FROM Comment c", Comment.class).getResultList();
    }

    public Comment getCommentById(Long id) {
        EntityManager em = entityManagerFactory.createEntityManager();
        return em.find(Comment.class, id);
    }

    public Comment createComment(Comment comment) {
        EntityManager em = entityManagerFactory.createEntityManager();
        em.getTransaction().begin();
        em.persist(comment);
        em.getTransaction().commit();
        em.close();
        return comment;
    }

    public void updateComment(Comment comment) {
        EntityManager em = entityManagerFactory.createEntityManager();
        em.getTransaction().begin();
        em.merge(comment);
        em.getTransaction().commit();
        em.close();
    }

    public void deleteComment(Long id) {
        EntityManager em = entityManagerFactory.createEntityManager();
        em.getTransaction().begin();
        Comment comment = em.find(Comment.class, id);
        if (comment != null) {
            em.remove(comment);
        }
        em.getTransaction().commit();
        em.close();
    }
}
