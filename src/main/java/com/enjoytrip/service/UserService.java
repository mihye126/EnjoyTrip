package com.enjoytrip.service;

import com.enjoytrip.vo.User;

public interface UserService {
    User getUser(String id, String pw);

    int modifySuccess(User user, String pid, String ppw, String pname);

    int delete(User user);
}
