package com.enjoytrip.dao;

import com.enjoytrip.util.DBUtil;
import com.enjoytrip.vo.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAOImpl implements UserDAO{
    DBUtil util;

    public UserDAOImpl() {
        util=DBUtil.getInstance();
    }

    @Override
    public User getUser(String id, String pw) {
        User u=null;
        try {
            Connection con = util.getConnection();
            String q = "select id,pw,username,num,bday from user where id = ?";
            PreparedStatement stat = con.prepareStatement(q);
            stat.setString(1, id);
            ResultSet rs = stat.executeQuery();

            if (rs.next()) {
                id = rs.getString(1);
                pw = rs.getString(2);
                String username = rs.getString(3);
                String num = rs.getString(4);
                String bday = rs.getString(5);

                u = new User(id,pw,username,num,bday);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return u;
    }

    @Override
    public int modifySuccess(User user) {
        try {
            Connection con = util.getConnection();//pool에서 한개 빌려옴
            String id= user.getId();
            String pw=user.getPass();


            String q = "UPDATE user SET id = ?, pw = ? WHERE id = ?";
            PreparedStatement stat = con.prepareStatement(q);
            stat.setString(1, id);
            stat.setString(2, pw);
            stat.setString(3, id);

            return stat.executeUpdate();

        }catch(Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    @Override
    public int delete(User user) {
        try {
            Connection con = util.getConnection();//pool에서 한개 빌려옴
            String id= user.getId();


            String q = "DELETE FROM user WHERE id = ?";
            PreparedStatement stat = con.prepareStatement(q);
            stat.setString(1, id);

            return stat.executeUpdate();

        }catch(Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
}
