package com.enjoytrip.service;

import com.enjoytrip.vo.User;

public interface UserService {
    User getUser(String id, String pw);

    int modifySuccess(User user);

    int delete(User user);
}
