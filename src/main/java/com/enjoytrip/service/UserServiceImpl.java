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
    public User selectOne(String id, String pw) {
        return dao.selectOne(id,pw);
    }

    @Override
    public int updateUser(User user) {
        return dao.updateUser(user);
    }

    @Override
    public int updatePassword(String id, String newpass) {
        return dao.updatePassword(id,newpass);
    }

    @Override
    public int delete(User user) {
        return dao.delete(user);
    }

    @Override
    public int register(User user) {
        return dao.register(user);
    }

    @Override
    public boolean check(String id, String pass) {
        return dao.check(id,pass);
    }
}
