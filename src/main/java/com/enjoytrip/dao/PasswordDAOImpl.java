package com.enjoytrip.dao;

import com.enjoytrip.util.DBUtil;
import com.enjoytrip.vo.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class PasswordDAOImpl implements PasswordDAO{
    DBUtil util;

    public PasswordDAOImpl() {
        util= DBUtil.getInstance();
    }

    @Override
    public int modify(User user) {
        try {
            Connection con = util.getConnection();//pool에서 한개 빌려옴
            String id= user.getId();
            String pass=user.getPass();


            String q = "UPDATE user set pass= ? WHERE id = ?";
            PreparedStatement stat = con.prepareStatement(q);
            stat.setString(1, pass);
            stat.setString(2, id);


            return stat.executeUpdate();


        }catch(Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
}
