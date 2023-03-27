package com.enjoytrip.dao;


import com.enjoytrip.vo.User;

public interface PasswordDAO {
    int modify(String id, String newpass);

}
