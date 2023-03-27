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
    public int modify(String id, String newpass) {
        try {
            Connection con = util.getConnection();//pool에서 한개 빌려옴

            String q = "UPDATE user set pw= ? WHERE id = ?";
            PreparedStatement stat = con.prepareStatement(q);
            stat.setString(1, newpass);
            stat.setString(2, id);

            int result=stat.executeUpdate();
            if(result==1){
                System.out.println("비밀번호 수정 완료!");

            }else{
                System.out.println("비밀번호 수정 실패!");
                result=0;
            }
            return result;

        }catch(Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
}
