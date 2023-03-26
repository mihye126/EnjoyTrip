package com.enjoytrip.service;

import com.enjoytrip.dao.PasswordDAO;
import com.enjoytrip.dao.PasswordDAOImpl;
import com.enjoytrip.vo.User;

public class PasswordServiceImpl implements PasswordService{
    PasswordDAO dao;

    public PasswordServiceImpl() {
        dao=new PasswordDAOImpl();
    }


    @Override
    public int modify(User user) {
        return dao.modify(user);
    }
}
