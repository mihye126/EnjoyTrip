package com.enjoytrip.controller;

import com.enjoytrip.service.HotPlaceService;
import com.enjoytrip.service.HotPlaceServiceImpl;
import com.enjoytrip.vo.Attraction;
import com.enjoytrip.vo.HotPlace;
import com.enjoytrip.vo.User;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.ImageIcon;

public class HotPlaceController {
    HotPlaceService service;

    public HotPlaceController() {
        service=new HotPlaceServiceImpl();
    }
    public void list(HttpServletRequest request, HttpServletResponse response){
        RequestDispatcher dispatcher= request.getRequestDispatcher("/views/pages/blog/list.jsp");
        request.setAttribute("hotPlaces", service.selectAll());
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

    }

    public void read(HttpServletRequest request, HttpServletResponse response){
        RequestDispatcher dispatcher= request.getRequestDispatcher("/views/pages/blog/read.jsp");
        String contentID=request.getParameter("contentID");
        request.setAttribute("hotPlace", service.selectOne(contentID));

        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public void delete(HttpServletRequest request, HttpServletResponse response){

        String mobileCode=request.getParameter("contentID");
        int flag=service.delete(mobileCode);

        try {
            response.sendRedirect("/hotPlace/list");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

    }

    public void insert(HttpServletRequest request, HttpServletResponse response){
        RequestDispatcher dispatcher= request.getRequestDispatcher("/views/pages/blog/insert.jsp");

        HttpSession session= request.getSession();
        User user= (User) session.getAttribute("user");
        if(user==null){

            try {
                session.setAttribute("msg","로그인이 필요합니다.");
                response.sendRedirect("/account/login");
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
        else {
            try {
                dispatcher.forward(request, response);
            } catch (ServletException e) {
                throw new RuntimeException(e);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }

    }

    public void insertProcess(HttpServletRequest request, HttpServletResponse response){

        String contentTypeID=request.getParameter("contentTypeID");
        String title=request.getParameter("title");
        String address=request.getParameter("address");
        String firstImage=request.getParameter("firstImage");
        String overview=request.getParameter("overview");

        HttpSession session= request.getSession();
        User user= (User) session.getAttribute("user");


        int flag=service.insert(new HotPlace(null,contentTypeID,title,address,firstImage,0,overview,
            user.getId(), user.getUsername()));

        try {
            response.sendRedirect("/hotPlace/list");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

    }

}
