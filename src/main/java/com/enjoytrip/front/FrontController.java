package com.enjoytrip.front;


import com.enjoytrip.controller.AttractionController;
import com.enjoytrip.controller.NotFoundController;
import com.enjoytrip.controller.PasswordController;
import com.enjoytrip.controller.SignInController;
import com.enjoytrip.controller.SignUpController;
import com.enjoytrip.controller.UserController;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "FrontController", value = "*.com")
public class FrontController extends HttpServlet {

    SignInController sicon;
    SignUpController sucon;
    PasswordController pwcon;
    UserController ucon;

    AttractionController attractionController;
    NotFoundController notFoundController;

    public FrontController() {

        sicon = new SignInController();
        sucon = new SignUpController();
        pwcon = new PasswordController();
        ucon = new UserController();
        attractionController = new AttractionController();
        notFoundController = new NotFoundController();
    }

    public void process(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        String url = request.getServletPath();

        if (url.equals("/sign-in.com")) {
            sicon.login(request, response);
        } else if (url.equals("/logout.com")) {
            sicon.logout(request, response);
        } else if (url.equals("/loginProcess.com")) {//로그인 처리(db체크, 세션에 로그인 정보 저장)
            sicon.loginProcess(request, response);
        } else if (url.equals("/sign-up.com")) {//로그인 처리(db체크, 세션에 로그인 정보 저장)
            sucon.join(request, response);
        } else if (url.equals("/register.com")) {//로그인 처리(db체크, 세션에 로그인 정보 저장)
            sucon.register(request, response);
        } else if (url.equals("/password.com")) {//로그인 처리(db체크, 세션에 로그인 정보 저장)
            pwcon.page(request, response);
        } else if (url.equals("/passModify.com")) {//로그인 처리(db체크, 세션에 로그인 정보 저장)
            pwcon.modify(request, response);
        } else if (url.equals("/userInfo.com")) {//로그인 처리(db체크, 세션에 로그인 정보 저장)
            ucon.info(request, response);
        } else if (url.equals("/userModify.com")) {//로그인 처리(db체크, 세션에 로그인 정보 저장)
            ucon.modify(request, response);
        } else if (url.equals("/modifySuccess.com")) {//로그인 처리(db체크, 세션에 로그인 정보 저장)
            String id = request.getParameter("id");
            String pw = request.getParameter("pass");
            String name = request.getParameter("username");

            ucon.success(request, response, id, pw, name);
        } else if (url.equals("/index.com")) { //메인 페이지
            attractionController.index(request, response);
        } else if (url.equals("/list.com")) { // 관광지 정보
            attractionController.list(request, response);
        } else if (url.equals("/read.com")) { // 관광지 상세
            attractionController.read(request, response);
        } else if (url.equals("/not-found.com")) { // 관광지 상세
            notFoundController.notFound(request, response);
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
