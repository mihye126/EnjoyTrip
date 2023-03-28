package com.enjoytrip.dao;

import com.enjoytrip.vo.User;

public interface UserDAO {
    User selectOne(String id, String pw);
    int updateUser(User user, String pid, String ppw, String pname);
    int updatePassword(String id, String newPassword);
    int delete(User user);
    int register(User user);
    boolean check(User user);

}
