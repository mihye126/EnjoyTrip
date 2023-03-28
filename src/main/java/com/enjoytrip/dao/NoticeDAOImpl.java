package com.enjoytrip.dao;

import com.enjoytrip.util.DBUtil;
import com.enjoytrip.vo.Notice;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class NoticeDAOImpl implements NoticeDAO {
    DBUtil util;

    public NoticeDAOImpl() {
        util=DBUtil.getInstance();
    }

    @Override
    public ArrayList<Notice> selectAll() {
        ArrayList<Notice> list = new ArrayList<>();

        try {
            Connection con = util.getConnection();
            Statement stat = con.createStatement();
            String q = "select num, wdate, title,content from board order by num desc";
            ResultSet rs = stat.executeQuery(q);

            while (rs.next()) {
                String num = rs.getString(1);
                String wdate = rs.getString(2);
                String title = rs.getString(3);
                String content = rs.getString(4);


                Notice n = new Notice(num, wdate, title,content);
                list.add(n);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public Notice selectOne(String num) {
        Notice n = null;
        try {
            Connection con = util.getConnection();
            String q = "select num, wdate, title, content from board where num = ?";
            PreparedStatement stat = con.prepareStatement(q);
            stat.setString(1, num);
            ResultSet rs = stat.executeQuery();

            if (rs.next()) {
                num = rs.getString(1);
                String wdate = rs.getString(2);
                String title = rs.getString(3);
                String content = rs.getString(4);
                n = new Notice(num, wdate, title, content);
            }
            con.close(); // *****
        } catch (Exception e) {
            e.printStackTrace();
        }
        return n;
    }

    @Override
    public int insert(Notice n) {
        int x = 0;

        try {
            Connection con = util.getConnection();// pool에서 한개 빌려옴
            String q = "insert into board(NAME,PASS,wdate,title,content)  values (?,?,sysdate(),?,?)";

            PreparedStatement stat = con.prepareStatement(q);
            stat.setString(1, "운영자");
            stat.setString(2,  "0000");
            stat.setString(3, n.getTitle());
            stat.setString(4, n.getContent());

            x = stat.executeUpdate();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return x;
    }

    @Override
    public int delete(String num) {
        int x = 0;
        try {
            String q = "delete from board where num = ?";
            Connection con = util.getConnection();// pool에서 한개 빌려옴
            PreparedStatement stat = con.prepareStatement(q);
            stat.setString(1, num);// ?에 setting
            x = stat.executeUpdate();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return x;
    }

}
