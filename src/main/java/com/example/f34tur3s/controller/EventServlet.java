package com.example.f34tur3s.controller;

import com.example.f34tur3s.domain.Category;
import com.example.f34tur3s.domain.Event;
import com.example.f34tur3s.domain.User;
import com.example.f34tur3s.service.CategoryService;
import com.example.f34tur3s.service.EventService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

@WebServlet(value = "/events", name = "events")

public class EventServlet extends HttpServlet {
    EventService eventService;
    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm");

    @Override
    public void init() throws ServletException {
        super.init();
        eventService = new EventService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            List<Event> events = eventService.getAllEvents();
            req.setAttribute("events", events);
            req.getRequestDispatcher("/dashbaord/pages/events.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        String action = req.getParameter("action");
        if ("Update".equals(action)) {
            doPut(req, resp);
        } else if ("delete".equals(action)) {
            doDelete(req, resp);
        } else {

            String name = req.getParameter("eventName");
            String description = req.getParameter("eventDescription");
            Date date = null;
            String dateString = req.getParameter("eventDate");
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

            try {
                date = new Date(dateFormat.parse(dateString).getTime());
            } catch (ParseException e) {
                e.printStackTrace();
            }
            String timeString = req.getParameter("eventTime");
            System.out.println(timeString + ":00");
            LocalTime parsedTime = LocalTime.parse(req.getParameter("eventTime").trim(), formatter);
            Time time = Time.valueOf(parsedTime);
            String location = req.getParameter("eventLocation");


            String image = req.getParameter("eventImage");
            String vipString = req.getParameter("eventNbrVIP");
            Integer VIP = Integer.parseInt(vipString);
            String standardString = req.getParameter("eventNbrStandard");
            Integer standard = Integer.parseInt(standardString);
            Long categoryID = Long.valueOf(req.getParameter("eventCategory"));

            CategoryService categoryService = new CategoryService();
            Category category = categoryService.findCategory(categoryID);
            User organizer = (User) req.getSession().getAttribute("user");

            Event event = new Event(name, date, time, location, description, image, standard, VIP, category, organizer);
            eventService.createEvent(event);

            doGet(req, resp);
        }
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String deleteEventIdString = req.getParameter("eventId");
        Long deleteEventId = Long.parseLong(deleteEventIdString);

        Event event = eventService.getEventById(deleteEventId);

        if (event != null)
            eventService.deleteEvent(event);

        doGet(req, resp);
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long eventId = Long.parseLong(req.getParameter("eventId"));
        System.out.println(eventId);

        // Retrieve the edited event information from the form
        String newName = req.getParameter("eventName");
        String newDescription = req.getParameter("eventDescription");
        Date newDate = null;
        String newDateString = req.getParameter("eventDate");
        SimpleDateFormat newDateFormat = new SimpleDateFormat("yyyy-MM-dd");


        try {
            newDate = new Date(newDateFormat.parse(newDateString).getTime());
        } catch (ParseException e) {
            e.printStackTrace();
        }

        LocalTime parsedTime1 = LocalTime.parse(req.getParameter("eventTime").trim(), formatter);
        Time newTime = Time.valueOf(parsedTime1);
        String newLocation = req.getParameter("eventLocation");
        String newImage = req.getParameter("eventImage");
        String newVipString = req.getParameter("eventNbrVIP");
        Integer newVIP = Integer.parseInt(newVipString);
        String newStandardString = req.getParameter("eventNbrStandard");
        Integer newStandard = Integer.parseInt(newStandardString);
        Long newCategoryString = Long.valueOf(req.getParameter("eventCategory"));

        CategoryService categoryService = new CategoryService();
        Category newCategory = categoryService.findCategory(newCategoryString);
        User organizer = (User) req.getSession().getAttribute("user");


        // Fetch the existing event from your database
        Event existingEvent = eventService.getEventById(eventId);

        if (existingEvent != null) {
            // Update the event data with the edited information
            existingEvent.setName(newName);
            existingEvent.setDescription(newDescription);
            existingEvent.setDate(newDate);
            existingEvent.setHour(newTime);
            existingEvent.setLocation(newLocation);
            existingEvent.setImage(newImage);
            existingEvent.setNbrVIP(newVIP);
            existingEvent.setNbrStandard(newStandard);
            existingEvent.setCategory(newCategory);
            existingEvent.setOrganizer(organizer);

            // Save the updated event in your database
            eventService.updateEvent(existingEvent);

            // Redirect to the events listing page or show a success message
            doGet(req, resp);
        }
    }
}
