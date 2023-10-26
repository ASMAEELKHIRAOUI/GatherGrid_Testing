package com.example.f34tur3s.controller;


import com.example.f34tur3s.domain.Comment;
import com.example.f34tur3s.domain.User;
import com.example.f34tur3s.repository.UserRepository;
import com.example.f34tur3s.service.CommentService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/comments", "/deleteComment", "/editComment"})
public class CommentServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getServletPath();
        if (action.equalsIgnoreCase("/deleteComment")){
            doDelete(req, resp);
        }else {
            List<Comment> comments = new CommentService().getAllComments();
            req.setAttribute("comments", comments);
            req.getRequestDispatcher("/WEB-INF/commentSection.jsp").forward(req, resp);
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String commentText = req.getParameter("commentText");
        Integer review = Integer.valueOf(req.getParameter("review"));

//        en attendant l'authentification et la session d'utilisateur
        User user = new UserRepository().findById(1L);

        Comment comment = new Comment(commentText, review, user);

        CommentService commentService = new CommentService();
        Comment c = commentService.createComment(comment);

        List<Comment> comments = commentService.getAllComments();
        req.setAttribute("comments", comments);
        req.getRequestDispatcher("/WEB-INF/commentSection.jsp").forward(req, resp);
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Long commentId = Long.valueOf(req.getParameter("id"));

        CommentService commentService = new CommentService();
        commentService.deleteComment(commentId);

        resp.sendRedirect(req.getContextPath() + "/comments");
    }
}
