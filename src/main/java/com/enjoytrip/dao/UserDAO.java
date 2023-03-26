package com.enjoytrip.dao;

import com.enjoytrip.vo.User;

public interface UserDAO {
    User getUser(String id, String pw);

    int modifySuccess(User user);

    int delete(User user);
}
