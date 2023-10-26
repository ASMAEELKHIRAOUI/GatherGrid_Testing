package com.example.f34tur3s.domain;

import jakarta.persistence.*;

import java.sql.Time;
import java.time.chrono.ChronoLocalDateTime;
import java.util.Date;
import java.util.Objects;

@Entity
public class Event {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String name;
    private Date date;
    private Time hour;
    private String location;
    private String description;
    private String image;
    private Integer nbrStandard;
    private Integer nbrVIP;
    @ManyToOne
    private Category category;

    @ManyToOne
    private User organizer;

    public Event() {
    }

    public Event(String name, Date date, Time hour, String location, String description, String image, Integer nbrStandard, Integer nbrVIP, Category category, User organizer) {
        this.name = name;
        this.date = date;
        this.hour = hour;
        this.location = location;
        this.description = description;
        this.image = image;
        this.nbrStandard = nbrStandard;
        this.nbrVIP = nbrVIP;
        this.category = category;
        this.organizer = organizer;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Time getHour() {
        return hour;
    }

    public void setHour(Time hour) {
        this.hour = hour;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getNbrStandard() {
        return nbrStandard;
    }

    public void setNbrStandard(Integer nbrStandard) {
        this.nbrStandard = nbrStandard;
    }

    public Integer getNbrVIP() {
        return nbrVIP;
    }

    public void setNbrVIP(Integer nbrVIP) {
        this.nbrVIP = nbrVIP;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public User getOrganizer() {
        return organizer;
    }

    public void setOrganizer(User organizer) {
        this.organizer = organizer;
    }

    @Override
    public String toString() {
        return "Event{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", date=" + date +
                ", hour=" + hour +
                ", location='" + location + '\'' +
                ", description='" + description + '\'' +
                ", image='" + image + '\'' +
                ", nbrStandard=" + nbrStandard +
                ", nbrVIP=" + nbrVIP +
                ", category=" + category +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Event event = (Event) o;
        return Objects.equals(id, event.id) && Objects.equals(name, event.name) && Objects.equals(date, event.date) && Objects.equals(hour, event.hour) && Objects.equals(location, event.location) && Objects.equals(description, event.description) && Objects.equals(image, event.image) && Objects.equals(nbrStandard, event.nbrStandard) && Objects.equals(nbrVIP, event.nbrVIP) && Objects.equals(category, event.category);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, date, hour, location, description, image, nbrStandard, nbrVIP, category);
    }
}
