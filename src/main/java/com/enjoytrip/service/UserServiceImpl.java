package com.enjoytrip.service;

import com.enjoytrip.dao.UserDAO;
import com.enjoytrip.dao.UserDAOImpl;
import com.enjoytrip.vo.User;

public class UserServiceImpl implements UserService{
    UserDAO dao;

    public UserServiceImpl() {
        dao=new UserDAOImpl();
    }

    @Override
    public User getUser(String id, String pw) {
        return dao.getUser(id, pw);
    }

    @Override
    public int modifySuccess(User user) {
        return dao.modifySuccess(user);
    }

    @Override
    public int delete(User user) {
        return dao.delete(user);
    }
}
