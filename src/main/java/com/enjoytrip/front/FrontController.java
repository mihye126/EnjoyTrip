package com.enjoytrip.front;


import com.enjoytrip.controller.SignInController;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "FrontController", value = "*.com")
public class FrontController extends HttpServlet {

    SignInController sicon;

    public FrontController() {
        sicon=new SignInController();
    }

    public void process(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        String url = request.getServletPath();

        if(url.equals("/sign-in.com")){
            sicon.login(request, response);
        } else if(url.equals("/logout.com")) {
            sicon.logout(request, response);
        }else if(url.equals("/loginProcess.com")) {//로그인 처리(db체크, 세션에 로그인 정보 저장)
            sicon.loginProcess(request, response);
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
