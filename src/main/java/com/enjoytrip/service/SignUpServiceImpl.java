package com.enjoytrip.service;

import com.enjoytrip.dao.SignUpDAO;
import com.enjoytrip.dao.SignUpDAOImpl;
import com.enjoytrip.vo.User;

public class SignUpServiceImpl implements SignUpService{
    SignUpDAO dao;

    public SignUpServiceImpl() {
        dao= new SignUpDAOImpl();
    }


    @Override
    public int register(User user) {
        return dao.register(user);
    }
}
