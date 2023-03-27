package com.enjoytrip.dao;

import com.enjoytrip.util.DBUtil;
import com.enjoytrip.vo.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class SignInDAOImpl implements SignInDAO{
    DBUtil util;

    public SignInDAOImpl() {

        util=DBUtil.getInstance();
    }

    @Override
    public boolean check(User user) {
        boolean flag = false;
        try {
            Connection con = util.getConnection();//pool에서 한개 빌려옴
            String q = "select id from user where id = ? and pw = ?";
            PreparedStatement stat = con.prepareStatement(q);

            System.out.println(user.getId());

            stat.setString(1, user.getId());
            stat.setString(2, user.getPass());

            ResultSet rs = stat.executeQuery();

            if(rs.next()) {
                flag = true;
            }
            con.close();//pool에 반납
        }catch(Exception e) {
            e.printStackTrace();
        }
        return flag;
    }
}
