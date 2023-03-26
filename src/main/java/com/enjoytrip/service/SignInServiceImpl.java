package com.enjoytrip.service;

import com.enjoytrip.dao.SignInDAO;
import com.enjoytrip.dao.SignInDAOImpl;
import com.enjoytrip.vo.User;

public class SignInServiceImpl implements SignInService {

    SignInDAO dao;

    public SignInServiceImpl() {
        dao= new SignInDAOImpl();
    }

    @Override
    public boolean check(User user) {
        return false;
    }
}
