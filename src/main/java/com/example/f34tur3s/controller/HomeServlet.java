package com.example.f34tur3s.controller;

import com.example.f34tur3s.domain.Event;
import com.example.f34tur3s.service.EventService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(value = "", name = "home")
public class HomeServlet extends HttpServlet {

    EventService eventService;

    @Override
    public void init() throws ServletException {
        super.init();
        eventService = new EventService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            // Fetch data from the repository via the service
            List<Event> events = eventService.getAllEvents();

            System.out.println("Number of events retrieved: " + events.size());
            // setting data as an attribute
            System.out.println(events);
            req.setAttribute("events", events);

            // Forward to JSP page to display data
            req.getRequestDispatcher("/index.jsp").forward(req, resp);
        } catch (Exception e) {
            throw e;
        }
    }

}
