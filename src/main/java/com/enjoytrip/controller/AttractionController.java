package com.enjoytrip.controller;

import com.enjoytrip.service.AttractionService;
import com.enjoytrip.service.AttractionServiceImpl;
import com.enjoytrip.service.SidoService;
import com.enjoytrip.service.SidoServiceImpl;
import com.enjoytrip.vo.Attraction;
import com.enjoytrip.vo.Category;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AttractionController {
    SidoService sidoService;
    AttractionService attractionService;

    public AttractionController() {
        sidoService=new SidoServiceImpl();
        attractionService=new AttractionServiceImpl();
    }

    public void index(HttpServletRequest request, HttpServletResponse response){
        RequestDispatcher dispatcher= request.getRequestDispatcher("/views/pages/main.jsp");
        request.setAttribute("sidos", sidoService.getSidos());

        List<Category> categories =new ArrayList<>();
        categories.add(new Category("1","Seoul"));
        categories.add(new Category("39","Jeju"));
        categories.add(new Category("6","Busan"));
        categories.add(new Category("32","Sokcho"));
        categories.add(new Category("31","Suwon"));
        categories.add(new Category("38","Jeonju"));
        categories.add(new Category("2","Incheon"));
        categories.add(new Category("32","Gangneung"));

        request.setAttribute("categories",categories);

        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

    }

    public void list(HttpServletRequest request, HttpServletResponse response){
        RequestDispatcher dispatcher= request.getRequestDispatcher("/views/pages/list.jsp");
        String sidoCode=request.getParameter("sidoCode");
        String contentTypeID=request.getParameter("contentTypeID");
        String pageNumber=request.getParameter("pageNumber");

        request.setAttribute("sidos", sidoService.getSidos());
        request.setAttribute("attractions", attractionService.search(sidoCode,contentTypeID==null? "12" :contentTypeID));

        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

    }

    public void read(HttpServletRequest request, HttpServletResponse response){
        RequestDispatcher dispatcher= request.getRequestDispatcher("/views/pages/read.jsp");
        String contentID=request.getParameter("contentID");
        Attraction attraction=attractionService.selectOne(contentID);

        request.setAttribute("attraction", attraction);
        request.setAttribute("latitude", attraction.getLatitude());
        request.setAttribute("longitude", attraction.getLongitude());


        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

    }

}
