package com.example.f34tur3s.repository;

import com.example.f34tur3s.domain.User;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

import java.util.List;
import java.util.stream.Stream;

public class UserRepository {
    private final EntityManagerFactory entityManagerFactory;
    public UserRepository(){
        entityManagerFactory = Persistence.createEntityManagerFactory("my-persistence-unit");
    }

    public User findUser(Long id) {
        EntityManager entityManager =entityManagerFactory.createEntityManager();
        return entityManager.find(User.class, id);
    }
    public void save(User user) {
        EntityManager entityManager =entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        entityManager.persist(user);
        entityManager.getTransaction().commit();
        entityManager.close();
    }

    public Stream<User> findByEmail(String email) {
        EntityManager entityManager =entityManagerFactory.createEntityManager();
        Stream<User> userStream= entityManager.createQuery("SELECT u FROM User u WHERE u.email = :email")
                .setParameter("email", email).getResultStream();
        return userStream;
    }

    public User findById(Long id) {
        EntityManager entityManager =entityManagerFactory.createEntityManager();
        User user = entityManager.find(User.class, id);
        return user;
    }


    public List<User> getAllUsers() {
        EntityManager entityManager =entityManagerFactory.createEntityManager();
        List<User> users = entityManager.createQuery("SELECT u FROM User u", User.class).getResultList();
        return users;
    }
}
