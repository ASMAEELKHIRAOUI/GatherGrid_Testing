package com.example.f34tur3s.service;

import com.example.f34tur3s.domain.Comment;
import com.example.f34tur3s.domain.Event;
import com.example.f34tur3s.domain.User;
import com.example.f34tur3s.repository.CommentRepository;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

class CommentServiceTest {

    CommentService commentService;
    CommentRepository commentRepository;


    @BeforeEach
    void setup(){
        commentRepository = mock(CommentRepository.class);
        commentService = new CommentService(commentRepository);
    }

    @Test
    void testCreateCommentEventException(){
        User user = new User();
        Comment comment = new Comment("comment", 5,user);
        comment.setUser(new User());

        Comment comment2 = new Comment("comment", 5,user);
        comment2.setId(1L);

        when(commentRepository.createComment(comment)).thenReturn(comment2);

        assertThrows(IllegalArgumentException.class,() -> commentService.createComment(comment), "Event does not exist");

    }

    @Test
    void testCreateCommentUserException(){
        User user = new User();
        Comment comment = new Comment("comment", 5,user);
        Event event = new Event();
        comment.setEvent(event);

        Comment comment2 = new Comment("comment", 5,user);
        comment2.setId(1L);

        when(commentRepository.createComment(comment)).thenReturn(comment2);

        assertThrows(IllegalArgumentException.class,() -> commentService.createComment(comment), "User does not exist");

    }

    @Test
    void testCreateCommentEventIsEmpty(){
        User user = new User();
        Comment comment = new Comment("comment", 5,user);
        comment.setEvent(new Event());

        Comment comment2 = new Comment("comment", 5,user);
        comment2.setId(1L);

        when(commentRepository.createComment(comment)).thenReturn(comment2);

        assertThrows(IllegalArgumentException.class, () -> commentService.createComment(comment), "Event is empty");

    }

}