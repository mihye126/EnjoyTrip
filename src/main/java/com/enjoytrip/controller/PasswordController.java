package com.enjoytrip.controller;

import com.enjoytrip.service.PasswordService;
import com.enjoytrip.service.PasswordServiceImpl;
import com.enjoytrip.vo.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class PasswordController {
    PasswordService service;

    public PasswordController() {
        service=new PasswordServiceImpl();
    }

    public void page(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/pages/password.jsp");

        try {

            dispatcher.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void modify(HttpServletRequest request, HttpServletResponse response) {
        String id = request.getParameter("id");
        String pass = request.getParameter("pass");
        String passConfirm=request.getParameter("passConfirm");

        User user = new User(id, pass);
        int flag=service.modify(user); //비밀번호 올바르게 수정됐는지

        String url = "sign-in.com";//ok

        if (pass==passConfirm) {// 회원 가입 실패
            System.out.println("비밀번호가 동일합니다.");

        }else{
            System.out.println("비밀번호가 동일하지 않습니다.");
            url="password.com";
        }

        try {
            response.sendRedirect(url);

        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
