package com.enjoytrip.service;

import com.enjoytrip.vo.User;

public interface UserService {
    User selectOne(String id, String pw);

    int updateUser(User user);
    int updatePassword(String id, String newpass);

    int delete(User user);

    int register(User user);

    boolean check(String id, String pass);
}
