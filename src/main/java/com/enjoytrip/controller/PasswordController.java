package com.enjoytrip.controller;

import com.enjoytrip.service.PasswordService;
import com.enjoytrip.service.PasswordServiceImpl;
import com.enjoytrip.service.SignInService;
import com.enjoytrip.service.SignInServiceImpl;
import com.enjoytrip.vo.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
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
        String newpass=request.getParameter("newpass");
        String passConfirm=request.getParameter("passConfirm");

        int modiflag=0;
        HttpSession session = request.getSession();


        String url = "sign-in.com";//비밀번호 수정완료시 로그인 창으로 이동

        if(newpass.equals(passConfirm)){
            modiflag=service.modify(id,newpass);

            if (modiflag==1) {
                session.setAttribute("msg", "비밀번호가 수정 완료. 로그인창으로 이동합니다.");

            }else{
                url="password.com";
                session.setAttribute("msg", "비밀번호 수정 실패");
            }
        }else{
            session.setAttribute("msg", "비밀번호가 동일하지 않습니다.");
        }

        try {
            response.sendRedirect(url);

        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
