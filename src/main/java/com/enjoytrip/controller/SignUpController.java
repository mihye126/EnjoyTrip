package com.enjoytrip.controller;

import com.enjoytrip.service.SignUpService;
import com.enjoytrip.service.SignUpServiceImpl;
import com.enjoytrip.vo.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class SignUpController {
    SignUpService service;

    public SignUpController() {
        service=new SignUpServiceImpl();
    }

    public void join(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/pages/sign-up.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public void register(HttpServletRequest request, HttpServletResponse response) {
        String name=request.getParameter("name");
        String id = request.getParameter("id");
        String pass = request.getParameter("pass");
        String remember = request.getParameter("remember");//checkbox

        HttpSession session = request.getSession();

        User user = new User(id, pass, name);
        int flag = service.register(user);
        String url = "index.jsp";//ok

        if (flag==0) {// 회원 가입 실패

            session.setAttribute("msg", "이미 존재하는 아이디입니다.");
            System.out.println("회원 가입 실패");

            url = "sign-up.com";
        }else{
            System.out.println("회원가입 성공");
            session.setAttribute("msg", "회원가입 성공! 로그인을 해주세요.");
        }

        try {
            response.sendRedirect(url);

        } catch (IOException e) {
            e.printStackTrace();
        }


    }
}
