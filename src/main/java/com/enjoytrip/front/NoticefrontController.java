package com.enjoytrip.front;

import com.enjoytrip.controller.NotFoundController;
import com.enjoytrip.controller.NoticeController;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "NoticefrontController", value = "/notice/*")
public class NoticefrontController extends HttpServlet {
    NoticeController noticeController;
    NotFoundController notFoundController;

    public NoticefrontController() {
        noticeController=new NoticeController();
        notFoundController = new NotFoundController();

    }
    public void process(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        String url = request.getRequestURI();

        if(url.equals("/notice/list")) {
            noticeController.list(request, response);

        }else if(url.equals("/notice/insert")) {
            noticeController.insertForm(request, response);

        }else if(url.equals("/notice/insertProcess")) {
            noticeController.insertProcess(request, response);

        }else if(url.equals("/notice/delete")) {
            noticeController.delete(request, response);

        } else {
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
