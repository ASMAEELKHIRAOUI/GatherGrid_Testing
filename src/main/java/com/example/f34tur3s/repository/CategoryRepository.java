package com.example.f34tur3s.repository;

import com.example.f34tur3s.domain.Category;
import com.example.f34tur3s.domain.Event;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.transaction.Transactional;

import java.util.List;

public class CategoryRepository {
    private final EntityManagerFactory entityManagerFactory;

    public CategoryRepository() {
        entityManagerFactory = Persistence.createEntityManagerFactory("my-persistence-unit");
    }

    public List<Category> getAllCategories() {
        EntityManager em = entityManagerFactory.createEntityManager();
        return em.createQuery("SELECT c FROM Category c", Category.class).getResultList();
    }

    public Category getCategoryById(Long id) {
        EntityManager em = entityManagerFactory.createEntityManager();
        return em.find(Category.class, id);
    }

    public Category createCategory(Category category) {
        EntityManager em = entityManagerFactory.createEntityManager();
        em.getTransaction().begin();
        em.persist(category);
        em.getTransaction().commit();
        em.close();
        return category;
    }

    public void updateCategory(Category category) {
        EntityManager em = entityManagerFactory.createEntityManager();
        em.getTransaction().begin();
        em.merge(category);
        em.getTransaction().commit();
        em.close();
    }

    public void deleteCategory(Long id) {
        EntityManager em = entityManagerFactory.createEntityManager();
        em.getTransaction().begin();
        Category category = em.find(Category.class, id);
        if (category != null) {
            em.remove(category);
        }
        em.getTransaction().commit();
        em.close();
    }

    public Category findCategory(Long aLong) {
        EntityManager em = entityManagerFactory.createEntityManager();
        return em.find(Category.class, aLong);
    }
}