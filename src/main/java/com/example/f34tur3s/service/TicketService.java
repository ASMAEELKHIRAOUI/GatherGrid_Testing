package com.example.f34tur3s.service;

import com.example.f34tur3s.domain.Event;
import com.example.f34tur3s.domain.Ticket;
import com.example.f34tur3s.repository.TicketRepository;
import com.example.f34tur3s.service.dto.ResponseDTO;
import com.example.f34tur3s.service.dto.ResponseStatus;

import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.Date;
import java.util.Random;

public class TicketService {
    private final TicketRepository ticketRepository;
    Random random = new Random();

    public TicketService() {
        this.ticketRepository = new TicketRepository();
    }

    public ResponseDTO insertTicketService(Ticket ticket){
        //I will add this because im not using LocalDate in attribute date im using Date
        Date eventDate = ticket.getEvent().getDate();
        LocalDateTime eventLocalDateTime = eventDate.toInstant().atZone(ZoneId.systemDefault()).toLocalDateTime();

        if(LocalDateTime.now().isAfter(eventLocalDateTime)){
            return new ResponseDTO(ResponseStatus.ERROR,"This event is past due date!");
        } else if (!checkTicketAvailabilityService(ticket.getEvent())) {
            return new ResponseDTO(ResponseStatus.ERROR,"No ticket available now!");
        }
        int randomPositiveNumber = random.nextInt(Integer.MAX_VALUE);
        ticket.setNumber(randomPositiveNumber);
        return new ResponseDTO(ResponseStatus.CREATED,"Ticket created successfully",ticketRepository.addTicket(ticket));
    }


    public Boolean checkTicketAvailabilityService(Event event){
        Integer maxNbrStandard = event.getNbrStandard();
        Integer totalCount = ticketRepository.checkTicketAvailability(event);
        return totalCount < maxNbrStandard;
    }
}
