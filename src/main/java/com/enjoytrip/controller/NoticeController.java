package com.enjoytrip.controller;

import com.enjoytrip.service.NoticeService;
import com.enjoytrip.service.NoticeServiceImpl;
import com.enjoytrip.vo.Notice;

import com.enjoytrip.vo.User;
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
        request.setAttribute("notices", service.selectAll());

        // 화면 구성하러 jsp(list.jsp)로 gogo => forward방식으로 넘어감
        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/pages/notice/list.jsp");

        try {
            dispatcher.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }


    public void insertForm(HttpServletRequest request, HttpServletResponse response) {
        String url = "/views/pages/notice/insert.jsp";//새글 등록 화면

        HttpSession session = request.getSession();
        User user= (User) session.getAttribute("user");

        if (user == null) {
            session.setAttribute("msg", "로그인이 필요합니다.");
            url = "/views/pages/user/login.jsp";
        }  else if (! user.getId().equals("admin123")) {
            session.setAttribute("msg", "권한이 존재하지 않습니다.");
            url="/views/pages/notice/list.jsp";
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
            response.sendRedirect("/notice/list");
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    public void insertProcess(HttpServletRequest request, HttpServletResponse response) {
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        Notice notice = new Notice(null,null, title, content);
        service.insert(notice);

        try {
            response.sendRedirect("/notice/list");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}
