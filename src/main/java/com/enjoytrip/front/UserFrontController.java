package com.enjoytrip.front;

import com.enjoytrip.controller.NotFoundController;
import com.enjoytrip.controller.UserController;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "UserFrontController", value = "/account/*")
public class UserFrontController extends HttpServlet {

    UserController userController;
    NotFoundController notFoundController;

    public UserFrontController() {

        userController = new UserController();
        notFoundController = new NotFoundController();
    }

    public void process(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        String url = request.getRequestURI();

        if (url.equals("/account/login")) {
            userController.login(request, response);
        } else if (url.equals("/account/logout")) {
            userController.logout(request, response);
        } else if (url.equals("/account/loginProcess")) {
            userController.loginProcess(request, response);
        } else if (url.equals("/account/register")) {
            userController.register(request, response);
        } else if (url.equals("/account/registerProcess")) {//로그인 처리(db체크, 세션에 로그인 정보 저장)
            userController.registerProcess(request, response);
        } else if (url.equals("/account/password")) {
            userController.password(request, response);
        } else if (url.equals("/account/updatePassword")) {
            userController.updatePassword(request, response);
        } else if (url.equals("/account/info")) {
            userController.info(request, response);
        } else if (url.equals("/account/updateUser")) {
            userController.updateUser(request, response);
        } else if (url.equals("/account/updateUserProcess")) {
            userController.updateUserProcess(request, response);
        } else if (url.equals("/account/deleteAccount")) {
            userController.delete(request, response);
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
