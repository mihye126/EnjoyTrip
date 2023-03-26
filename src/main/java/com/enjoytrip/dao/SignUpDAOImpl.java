package com.enjoytrip.dao;

import com.enjoytrip.util.DBUtil;
import com.enjoytrip.vo.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class SignUpDAOImpl implements SignUpDAO{
    DBUtil util;

    public SignUpDAOImpl() {
        util=DBUtil.getInstance();
    }

    @Override
    public int register(User user) {
        try {
            Connection con = util.getConnection();//pool에서 한개 빌려옴
            String id= user.getId();
            String pass=user.getPass();

            String checkq = "select id from user where id = ?";
            PreparedStatement stat = con.prepareStatement(checkq);
            stat.setString(1, id);
            ResultSet rs = stat.executeQuery();

            if (rs.next()!=false){
                System.out.println("중복된 아이디입니다.");
                return 0;
            }

            String q = "INSERT INTO USER VALUES (?, ?, null, null, null, null)";
            PreparedStatement stat2 = con.prepareStatement(q);
            stat2.setString(1, id);
            stat2.setString(2, pass);

            System.out.println(id+" "+pass);

            return stat2.executeUpdate();


        }catch(Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
}
