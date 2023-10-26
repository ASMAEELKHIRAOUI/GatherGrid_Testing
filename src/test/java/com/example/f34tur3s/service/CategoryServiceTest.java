package com.example.f34tur3s.service;

import org.junit.jupiter.api.BeforeEach;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;
import com.example.f34tur3s.domain.Category;
import com.example.f34tur3s.repository.CategoryRepository;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class CategoryServiceTest {

    private CategoryService categoryService;
    private CategoryRepository categoryRepository;
    @BeforeEach
    void setUp() {
        categoryRepository = mock(CategoryRepository.class);
        categoryService = new CategoryService(categoryRepository);
    }
    @Test
    void saveCategory() {
        // Define sample input values
        String categoryName = "Sample Category";
        String categoryDescription = "Description for the sample category";
        String categoryImage = "sample_image.jpg";

        // Create a Category object to be returned by the mock repository
        Category savedCategory = new Category(categoryName, categoryDescription, categoryImage);

        // Mock the categoryRepository's createCategory method
        when(categoryRepository.createCategory(savedCategory)).thenReturn(savedCategory);

        // Call the saveCategory method to save a category
        Category resultCategory = categoryService.saveCategory(categoryName, categoryDescription, categoryImage);

        // Check if the resultCategory is not null
        assertNotNull(resultCategory);

        // Check if the resultCategory's properties match the input values
        assertEquals(categoryName, resultCategory.getName());
        assertEquals(categoryDescription, resultCategory.getDescription());
        assertEquals(categoryImage, resultCategory.getImage());
    }

    @Test
    void deleteCategory() {
    }

    @Test
    void findCategory() {
    }
}