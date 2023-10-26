package com.example.f34tur3s.controller;

import com.example.f34tur3s.domain.Role;
import com.example.f34tur3s.domain.User;
import com.example.f34tur3s.repository.UserRepository;
import com.example.f34tur3s.service.UserAlreadyExistsException;
import com.example.f34tur3s.service.UserService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "RegistrationServlet", value = {"/pages/register", "/register"})
public class RegistrationServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username=request.getParameter("username");
        String firstName=request.getParameter("firstName");
        String lastName=request.getParameter("lastName");
        String email=request.getParameter("email");
        String password=request.getParameter("password");
        Role role=new Role(1,"user");
        User user=new User(username,firstName,lastName,email,password,role);
        UserService userService= new UserService();

        //path handel
        String action = request.getServletPath();
        String path;

        PrintWriter out=response.getWriter();

        if(action.equals("/pages/register")){
            path = "../index.jsp";
        }else{
            path = "index.jsp";
        }
        try {
            userService.register(user);
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            request.setAttribute("successRegistration", "your account has been created successfully");
            request.getRequestDispatcher(path).forward(request, response);
        } catch (UserAlreadyExistsException e) {
            request.setAttribute("errorMessage", "this account already exists");
            request.getRequestDispatcher(path).forward(request, response);
        } catch (IllegalArgumentException e) {
            request.setAttribute("errorMessage", "Invalid data");
            request.getRequestDispatcher(path).forward(request, response);
        }


    }
}
