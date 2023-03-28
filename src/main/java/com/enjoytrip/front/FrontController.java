package com.enjoytrip.front;

import com.enjoytrip.controller.AttractionController;
import com.enjoytrip.controller.NotFoundController;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "FrontController", value = "/main")
public class FrontController extends HttpServlet {
    AttractionController attractionController;
    NotFoundController notFoundController;

    public FrontController() {

        notFoundController = new NotFoundController();
        attractionController=new AttractionController();
    }

    public void process(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String url=request.getRequestURI();
        if(url.equals("/main")) {
            attractionController.index(request, response);
        }else{
            notFoundController.error(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        process(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        process(request, response);

    }
}
