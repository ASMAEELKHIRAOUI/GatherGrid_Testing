package com.example.f34tur3s.controller;

import com.example.f34tur3s.domain.Event;
import com.example.f34tur3s.domain.Ticket;
import com.example.f34tur3s.domain.User;
import com.example.f34tur3s.repository.EventRepository;
import com.example.f34tur3s.service.EventService;
import com.example.f34tur3s.service.TicketService;
import com.example.f34tur3s.service.dto.ResponseDTO;
import jakarta.persistence.EntityManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "ticket", value = {"/pages/reservation-ticket"})
public class TicketServlet extends HttpServlet {
    EventService eventService;

    @Override
    public void init() throws ServletException {
        eventService = new EventService();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = (User) req.getSession().getAttribute("user");
        String msg;
        if(user == null){
            msg = "Sign in Required";
            req.setAttribute("warning", msg);
            req.getRequestDispatcher("/index.jsp").forward(req, resp);
        }else{
            Long id_event = Long.valueOf(req.getParameter("id"));
            Event event = eventService.getEventById(id_event);
            req.setAttribute("event",event);
            Ticket ticket = new Ticket();
            ticket.setEvent(event);
            ticket.setUser(user);
            TicketService reservationService = new TicketService();
            ResponseDTO response = reservationService.insertTicketService(ticket);
            req.getRequestDispatcher("post-event.jsp").forward(req, resp);
        }
    }

}
