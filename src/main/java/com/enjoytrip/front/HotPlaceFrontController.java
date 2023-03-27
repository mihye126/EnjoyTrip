package com.enjoytrip.front;

import com.enjoytrip.controller.HotPlaceController;
import com.enjoytrip.controller.NotFoundController;
import java.io.UnsupportedEncodingException;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "HotPlaceFrontController", value = "*.blog")
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
        String url = request.getServletPath();

        if(url.equals("/list.blog")){
            controller.list(request, response);
        }else if(url.equals("/read.blog")){
            controller.read(request, response);
        }else if(url.equals("/delete.blog")){
            controller.delete(request, response);
        }else if(url.equals("/insert.blog")){
            controller.insert(request, response);
        }else if(url.equals("/insertProcess.blog")){
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
