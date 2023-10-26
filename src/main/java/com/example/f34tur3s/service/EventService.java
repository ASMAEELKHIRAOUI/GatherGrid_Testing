package com.example.f34tur3s.service;

import com.example.f34tur3s.domain.Event;
import com.example.f34tur3s.domain.Ticket;
import com.example.f34tur3s.repository.EventRepository;
import com.example.f34tur3s.repository.TicketRepository;
import com.example.f34tur3s.service.dto.ResponseDTO;
import com.example.f34tur3s.service.dto.ResponseStatus;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.stream.Collectors;

public class EventService {

    private final EventRepository eventRepository;

    public EventService() {
        eventRepository = new EventRepository();
    }

    public Event createEvent(Event event){
        validation(event);
        return eventRepository.save(event);
    }

    public List<Event> getAllEvents(){
        return eventRepository.findAll();
    }

    public Event getEventById(Long id){
        return eventRepository.find(id);
    }

    public Event updateEvent(Event event){
        validation(event);
        return eventRepository.update(event);
    }

    public Event deleteEvent(Event event){
        return eventRepository.delete(event);
    }

    private void validation(Event event) {
        if (event == null) {
            throw new IllegalArgumentException("The event is null");
        }

        if (event.getName() == null || event.getName().isBlank()) {
            throw new IllegalArgumentException("The name field is required");
        }

        if (event.getDate() == null) {
            throw new IllegalArgumentException("The date field is required");
        }

        if (event.getOrganizer() == null) {
            throw new IllegalArgumentException("No organizer has been selected");
        }

        if (event.getCategory() == null) {
            throw new IllegalArgumentException("No category has been selected");
        }

        if (event.getNbrVIP() == null) {
            throw new IllegalArgumentException("The number of vip's field is required");
        }

        if (event.getNbrStandard() == null) {
            throw new IllegalArgumentException("The number of standard's field is required");
        }

        if (event.getHour() == null) {
            throw new IllegalArgumentException("The time field is required");
        }

        if (event.getLocation() == null || event.getLocation().isBlank()) {
            throw new IllegalArgumentException("The location field is required");
        }

        if (event.getDescription() == null || event.getDescription().isBlank()) {
            throw new IllegalArgumentException("The description field is required");
        }

        if (event.getImage() == null || event.getImage().isBlank()) {
            throw new IllegalArgumentException("The image field is required");
        }

        if (event.getDate().before(new Date())) {
            throw new IllegalArgumentException("The date should be in the future");
        }
    }
}