package com.example.f34tur3s.controller;

import com.example.f34tur3s.domain.User;
import com.example.f34tur3s.service.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Optional;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String email=request.getParameter("email");
        String password=request.getParameter("password");
        UserService userService= new UserService();

        PrintWriter out=response.getWriter();

        Optional<User> userOptional=userService.login(email,password);
        if(userOptional.isPresent()){
            HttpSession session = request.getSession();
            session.setAttribute("user", userOptional.get());
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }else {
            request.setAttribute("errorMessage", "this account doesn't exists");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
       session.removeAttribute("user");
       response.sendRedirect("index.jsp");
    }
}
