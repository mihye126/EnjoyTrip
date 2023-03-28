package com.enjoytrip.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NotFoundController {

    public void error(HttpServletRequest request, HttpServletResponse response){
        try {
            response.sendRedirect("/notFound");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public void notFound(HttpServletRequest request, HttpServletResponse response){
        RequestDispatcher dispatcher= request.getRequestDispatcher("/views/pages/error/error.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }


}
