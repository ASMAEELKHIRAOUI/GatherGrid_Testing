package com.example.f34tur3s.security;

import com.example.f34tur3s.domain.User;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@WebFilter("/*")
public class AuthenticationFilter implements Filter {

    private HttpServletRequest httpRequest;
    private HttpServletResponse httpResponse;

    private final List<String> reachablePathsWithoutAuthentication = Arrays.asList("/register", "/login", "index.jsp", "/pages/post-event.jsp", "pages/events.jsp");

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {

        httpRequest = (HttpServletRequest) request;
        httpResponse = (HttpServletResponse) response;

        HttpSession httpSession = httpRequest.getSession(true);

        User loggedUser = (User) httpSession.getAttribute("user");

//        if (loggedUser != null && reachablePathWithoutLogging()) {
//            httpResponse.sendRedirect(httpRequest.getContextPath() + "/index.jsp"); // Modify this to the desired authorized page
//            return;
//        }

        // This Condition Is For Not Accesseding Other Pages Without Logging In
        if (loggedUser == null && !reachablePathWithoutLogging()) {
            httpResponse.sendRedirect(httpRequest.getContextPath() + "/index.jsp");
            return;
        }

        chain.doFilter(request, response);
    }

    public boolean reachablePathWithoutLogging() {
        return reachablePathsWithoutAuthentication.stream()
                .anyMatch(httpRequest.getRequestURL().toString()::contains);
//        return httpRequest.getRequestURI().endsWith("index.jsp");
//        return true;
    }

}