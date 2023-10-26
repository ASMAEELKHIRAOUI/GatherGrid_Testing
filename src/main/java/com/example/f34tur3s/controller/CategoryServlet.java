package com.example.f34tur3s.controller;

import com.example.f34tur3s.domain.Category;
import com.example.f34tur3s.service.CategoryService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.*;
import java.util.List;

@WebServlet(urlPatterns = {"/categories", "/deleteCategory", "/editCategory"})
public class CategoryServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getServletPath();
        if (action.equalsIgnoreCase("/deleteCategory")){
            doDelete(req, resp);
        }else {
            CategoryService categoryService = new CategoryService();
            List<Category> categories = categoryService.getAllCategories();
            req.setAttribute("categories", categories);
            req.getRequestDispatcher("/WEB-INF/categories.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long categoryID = Long.valueOf(req.getParameter("id"));

        CategoryService categoryService = new CategoryService();
        categoryService.deleteCategory(categoryID);

        resp.sendRedirect(req.getContextPath() + "/categories");
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        CategoryService categoryService = new CategoryService();
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        String image = request.getParameter("image");

        Category category = categoryService.saveCategory(name,description,image);

        request.setAttribute("category", category);
        List<Category> categories = categoryService.getAllCategories();
        request.setAttribute("categories", categories);
        request.getRequestDispatcher("/WEB-INF/categories.jsp").forward(request, response);
    }

}
