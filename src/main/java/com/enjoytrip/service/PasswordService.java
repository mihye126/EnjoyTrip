package com.enjoytrip.service;

import com.enjoytrip.vo.User;

public interface PasswordService {
    int modify(String id, String newpass);
}