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
    public User selectOne(String id, String pw) {
        User u=null;
        try {
            Connection con = util.getConnection();
            String q = "select id,pw, username, num, bday from user where id = ?";
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
    public int updateUser(User user) {
        try {
            Connection con = util.getConnection();//pool에서 한개 빌려옴
            String q = "UPDATE user SET pw = ?, username= ? WHERE id = ?";
            PreparedStatement stat = con.prepareStatement(q);
            stat.setString(1, user.getPass());
            stat.setString(2, user.getUsername());
            stat.setString(3, user.getId());

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


    @Override
    public int updatePassword(String id, String newpass) {
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


    @Override
    public boolean check(String id, String pass) {
        boolean flag = false;
        try {
            Connection con = util.getConnection();//pool에서 한개 빌려옴
            String q = "select id from user where id = ? and pw = ?";
            PreparedStatement stat = con.prepareStatement(q);

            stat.setString(1, id);
            stat.setString(2, pass);

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

    @Override
    public int register(User user) {
        try {
            Connection con = util.getConnection();//pool에서 한개 빌려옴
            String id= user.getId();
            String pass=user.getPass();
            String name=user.getUsername();

            String checkq = "select id from user where id = ?";
            PreparedStatement stat = con.prepareStatement(checkq);
            stat.setString(1, id);
            ResultSet rs = stat.executeQuery();

            if (rs.next()!=false){
                return 0;
            }

            String q = "INSERT INTO USER VALUES (?, ?, ?, null, null)";
            PreparedStatement stat2 = con.prepareStatement(q);
            stat2.setString(1, id);
            stat2.setString(2, pass);
            stat2.setString(3, name);


            return stat2.executeUpdate();


        }catch(Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
}
