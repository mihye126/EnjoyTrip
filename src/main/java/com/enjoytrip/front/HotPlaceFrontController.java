package com.enjoytrip.front;

import com.enjoytrip.controller.HotPlaceController;
import com.enjoytrip.controller.NotFoundController;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "HotPlaceFrontController", value = "/hotPlace/*")
public class HotPlaceFrontController extends HttpServlet {
    HotPlaceController controller;
    NotFoundController notFoundController;

    public HotPlaceFrontController() {
        controller=new HotPlaceController();
        notFoundController = new NotFoundController();
    }

    public void process(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String url = request.getRequestURI();

        if(url.equals("/hotPlace/list")){
            controller.list(request, response);
        }else if(url.equals("/hotPlace/read")){
            controller.read(request, response);
        }else if(url.equals("/hotPlace/delete")){
            controller.delete(request, response);
        }else if(url.equals("/hotPlace/insert")){
            controller.insert(request, response);
        }else if(url.equals("/hotPlace/insertProcess")){
            controller.insertProcess(request, response);
        }else {
            notFoundController.error(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        process(request, response);    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        process(request, response);
    }
}
