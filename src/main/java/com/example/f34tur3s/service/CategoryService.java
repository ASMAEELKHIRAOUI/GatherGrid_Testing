package com.example.f34tur3s.service;

import com.example.f34tur3s.domain.Category;
import com.example.f34tur3s.domain.Comment;
import com.example.f34tur3s.repository.CategoryRepository;
import jakarta.servlet.http.Part;

import java.io.*;
import java.util.List;

public class CategoryService {
    private final CategoryRepository categoryRepository;

    public CategoryService(){
        categoryRepository = new CategoryRepository();
    }

    public List<Category> getAllCategories() {
        return categoryRepository.getAllCategories();
    }


    public Category saveCategory(String name, String description, String image) {
        Category category = new Category(name, description, image);
        category.setImage(image);
        return categoryRepository.createCategory(category);
    }


    public void deleteCategory(Long categoryID) {
        categoryRepository.deleteCategory(categoryID);
    }

    public Category findCategory(Long categoryID){
        return categoryRepository.findCategory(categoryID);
    }

}