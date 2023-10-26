package com.example.f34tur3s.service;

import com.example.f34tur3s.domain.Comment;
import com.example.f34tur3s.repository.CommentRepository;

import java.util.List;

public class CommentService {
    CommentRepository commentRepository;

    public CommentService() {
        commentRepository = new CommentRepository();
    }

    public List<Comment> getAllComments() {
        return commentRepository.getAllComments();
    }

    public Comment getCommentById(Long id) {
        return commentRepository.getCommentById(id);
    }

    public Comment createComment(Comment comment) {
        validateComment(comment);
        return commentRepository.createComment(comment);
    }

    public void updateComment(Comment comment) {
        validateComment(comment);
        commentRepository.updateComment(comment);
    }

    public void deleteComment(Long id) {
        commentRepository.deleteComment(id);
    }

    private void validateComment(Comment comment) {
        if (comment == null) {
            throw new IllegalArgumentException("Comment cannot be null.");
        }

        if (comment.getText() == null || comment.getText().trim().isEmpty()) {
            throw new IllegalArgumentException("Comment content cannot be empty.");
        }

        if (comment.getText().length() > 250) {
            throw new IllegalArgumentException("Comment content exceeds the maximum allowed length.");
        }
    }
}
