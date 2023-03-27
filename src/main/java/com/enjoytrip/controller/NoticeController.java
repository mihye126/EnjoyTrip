package com.enjoytrip.controller;

import com.enjoytrip.service.NoticeService;
import com.enjoytrip.service.NoticeServiceImpl;
import com.enjoytrip.vo.Notice;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

public class NoticeController {
    NoticeService service;

    public NoticeController() {
        service= new NoticeServiceImpl();
    }

    public void list(HttpServletRequest request, HttpServletResponse response) {
        ArrayList<Notice> list = service.selectAll();// data 발생
        request.setAttribute("list", list);

        // 화면 구성하러 jsp(list.jsp)로 gogo => forward방식으로 넘어감
        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/pages/noticeList.jsp");

        try {
            dispatcher.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public void read(HttpServletRequest request, HttpServletResponse response) {
        String num = request.getParameter("num");
        Notice n = service.selectOne(num);
        request.setAttribute("n", n);

        // 화면 구성하러 jsp(read.jsp)로 gogo => forward방식으로 넘어감
        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/read.jsp");

        try {
            dispatcher.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void insertForm(HttpServletRequest request, HttpServletResponse response) {
        String url = "/views/insertForm.jsp";//새글 등록 화면

        HttpSession ses = request.getSession();
        if (ses.getAttribute("user") == null) {//login x
            url = "/views/loginForm.jsp";
        }

        // view로 넘어가기(forward 방식)
        RequestDispatcher dispatcher = request.getRequestDispatcher(url);
        try {
            dispatcher.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void delete(HttpServletRequest request, HttpServletResponse response) {
        String num = request.getParameter("num");
        int x = service.delete(num);
        try {
            response.sendRedirect("list");
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    public void insertProcess(HttpServletRequest request, HttpServletResponse response) {
        String title = request.getParameter("title");
        String content = request.getParameter("content");

        Notice notice = new Notice(null,title, content);
        service.insert(notice);

        try {
            response.sendRedirect("list");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}
