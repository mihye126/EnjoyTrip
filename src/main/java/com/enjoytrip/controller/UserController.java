package com.enjoytrip.controller;

import com.enjoytrip.service.UserService;
import com.enjoytrip.service.UserServiceImpl;
import com.enjoytrip.vo.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class UserController {

    UserService service;

    public UserController() {
        service= new UserServiceImpl();
    }

    public void info(HttpServletRequest request, HttpServletResponse response) {
        // 세션 처리
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("user");

        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/pages/user/info.jsp");
        request.setAttribute("user",user)
        ;
        try {
            dispatcher.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public void updateUser(HttpServletRequest request, HttpServletResponse response) {
        // 세션 처리
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("user");

        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/pages/user/update.jsp");
        request.setAttribute("user",user);

        try {
            dispatcher.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public void updateUserProcess(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("user");

        String pw=request.getParameter("pass");
        String name=request.getParameter("username");
        user.setPass(pw);
        user.setUsername(name);
        //새로 받아온 데이터로 넘기기
        int x = service.updateUser(user);

        try {
            response.sendRedirect("/account/info");

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void delete(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("user");

        int flag = service.delete(user);
        session.setAttribute("msg", "탈퇴 되었습니다");

        try {
            response.sendRedirect("/account/login");

        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    public void login(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/pages/user/login.jsp");

        try {

            dispatcher.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void logout(HttpServletRequest request, HttpServletResponse response) {
        // 세션에 저장된 로그인 정보를 삭제하고 초기화면으로 가기
        // 세션 얻기
        HttpSession session = request.getSession();
        session.setAttribute("user", null);

        // 초기화면으로 redirect
        try {
            response.sendRedirect("/main");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void loginProcess(HttpServletRequest request, HttpServletResponse response) {
        //1.사용자가 입력한 값 받아오기(id, pass)
        //2.받아온 값으로 User 객체 생성.  User user = new User(id, pass);
        //3.입력 정보가 맞는지 체크
        //boolean flag = service.check(user);
        //4.로그인 결과가 맞으면 로그인 정보 세션에 저장하고 초기화면으로 가기
        //5.로그인 결과가 틀리면 다시 로그인 화면으로 보내기
        String id = request.getParameter("id");
        String pass = request.getParameter("pass");
        String remember = request.getParameter("remember");//checkbox



        boolean flag = service.check(id, pass);
        String url = "/main";//ok
        HttpSession session = request.getSession();
        if (flag) {// 로그인 성공
            // 세션 처리
            User user = service.selectOne(id, pass);
            session.setAttribute("user", user);

            //cookie 처리---------------
            if(remember != null) {//체크박스 체크한 경우
                Cookie remem = new Cookie("savedId", id);
                remem.setMaxAge(-1);
                response.addCookie(remem);

            }else {//체크박스 푼 경우
                //유효하지 않은 쿠키로 설정하기
                Cookie cookie = new Cookie("savedId", "");
                cookie.setMaxAge(0); // 유효하지 않은 쿠키
                response.addCookie(cookie);
            }

        } else { //로그인 실패
            session.setAttribute("msg", "로그인 정보를 확인해 주세요!");
            url = "/account/login";
        }

        try {
            response.sendRedirect(url);

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void password(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/pages/user/password.jsp");

        try {

            dispatcher.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void updatePassword(HttpServletRequest request, HttpServletResponse response) {
        String id = request.getParameter("id");
        String newPassword=request.getParameter("newPassword");
        String passConfirm=request.getParameter("passConfirm");

        int modiflag=0;
        HttpSession session = request.getSession();


        String url = "/account/login";//비밀번호 수정완료시 로그인 창으로 이동

        if(newPassword.equals(passConfirm)){
            modiflag=service.updatePassword(id,newPassword);

            if (modiflag==1) {
                session.setAttribute("msg", "비밀번호가 수정 완료. 로그인창으로 이동합니다.");

            }else{
                url="/account/password";
                session.setAttribute("msg", "존재하지 않는 아이디입니다.");
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


    public void register(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/pages/user/register.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public void registerProcess(HttpServletRequest request, HttpServletResponse response) {
        String name=request.getParameter("name");
        String id = request.getParameter("id");
        String pass = request.getParameter("pass");

        HttpSession session = request.getSession();

        User user = new User(id, pass, name, null, null) ;
        int flag = service.register(user);
        String url = "/main";//ok

        if (flag==0) {// 회원 가입 실패

            session.setAttribute("msg", "이미 존재하는 아이디입니다.");
            url = "/account/login";

        }else{
            session.setAttribute("msg", "회원가입 성공! 로그인을 해주세요.");
        }

        try {
            response.sendRedirect(url);

        } catch (IOException e) {
            e.printStackTrace();
        }


    }
}
