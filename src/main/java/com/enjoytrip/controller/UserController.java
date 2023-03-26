package com.enjoytrip.controller;

import com.enjoytrip.service.SignInService;
import com.enjoytrip.service.SignInServiceImpl;
import com.enjoytrip.service.UserService;
import com.enjoytrip.service.UserServiceImpl;
import com.enjoytrip.vo.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserController {

    UserService uservice;
    SignInService siservice;

    public UserController() {
        siservice = new SignInServiceImpl();
        uservice= new UserServiceImpl();

    }

    public void info(HttpServletRequest request, HttpServletResponse response) {
        // 세션 처리
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("user");
        //
        String id =user.getId();
        String pw=user.getPass();

        User u = uservice.getUser(id,pw);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/pages/userInfo.jsp");
        session.setAttribute("oneUser", u);

        try {
            dispatcher.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public void modify(HttpServletRequest request, HttpServletResponse response) {
        // 세션 처리
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("user");
        //
        String id =user.getId();
        String pw=user.getPass();

        User u = uservice.getUser(id,pw);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/pages/userModify.jsp");
        session.setAttribute("oneUser", u);

        try {
            dispatcher.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public void success(HttpServletRequest request, HttpServletResponse response ,String pid, String ppw, String pname) {
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("user");
        //
        String id =user.getId();
        String pw=user.getPass();

        User u = uservice.getUser(id,pw);

        //새로 받아온 데이터로 넘기기
        int x = uservice.modifySuccess(u, pid, ppw, pname);

        try {
            response.sendRedirect("userInfo.com");

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void delete(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("user");
        //
        String id =user.getId();
        String pw=user.getPass();

        User u = uservice.getUser(id,pw);

        int flag = uservice.delete(u);

        System.out.println("탈퇴되었습니다.");

        try {
            response.sendRedirect("sign-in.com");

        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
