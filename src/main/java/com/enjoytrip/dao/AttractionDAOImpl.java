package com.enjoytrip.dao;

import com.enjoytrip.util.DBUtil;
import com.enjoytrip.vo.Attraction;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AttractionDAOImpl implements AttractionDAO{
    DBUtil util;
    static List<Attraction> attractions;

    public AttractionDAOImpl() {
        util=DBUtil.getInstance();
        attractions=new ArrayList<>();
    }

    @Override
    public Attraction selectOne(String contentID) {
        Attraction attraction=null;
        try {

            Connection connection= util.getConnection();
            attractions.clear();

            String q="select * from attraction_info where content_id=?";
            PreparedStatement statement=connection.prepareStatement(q);
            statement.setString(1,contentID);
            ResultSet resultSet=statement.executeQuery();

            while (resultSet.next()){
                 contentID= resultSet.getString(1);
                String contentTypeID= resultSet.getString(2);
                String title= resultSet.getString(3);
                String addr1= resultSet.getString(4);
                String addr2= resultSet.getString(5);
                String zipcode= resultSet.getString(6);
                String tel= resultSet.getString(7);
                String firstImage= resultSet.getString(8);
                String firstImage2= resultSet.getString(9);
                String readCount= resultSet.getString(10);
                String sidoCode= resultSet.getString(11);
                String gugunCode= resultSet.getString(12);
                String latitude= resultSet.getString(13);
                String longitude= resultSet.getString(14);
                String mlevel= resultSet.getString(15);

                attraction=new Attraction(contentID,contentTypeID,title,addr1,addr2,zipcode,tel,firstImage,firstImage2,Integer.parseInt(readCount),sidoCode,gugunCode,latitude,longitude,mlevel);
            }


        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return attraction;
    }

    @Override
    public List<Attraction> search(String sidoCode, String contentTypeID) {
        try {
            Connection connection= util.getConnection();
            attractions.clear();

            String q="select * from attraction_info where sido_code=? and content_type_id=? ";
            PreparedStatement statement=connection.prepareStatement(q);
            statement.setString(1,sidoCode);
            statement.setString(2,contentTypeID);
            ResultSet resultSet=statement.executeQuery();

            while (resultSet.next()){
                String contentID= resultSet.getString(1);
                contentTypeID= resultSet.getString(2);
                String title= resultSet.getString(3);
                String addr1= resultSet.getString(4);
                String addr2= resultSet.getString(5);
                String zipcode= resultSet.getString(6);
                String tel= resultSet.getString(7);
                String firstImage= resultSet.getString(8);
                String firstImage2= resultSet.getString(9);
                String readCount= resultSet.getString(10);
                sidoCode= resultSet.getString(11);
                String gugunCode= resultSet.getString(12);
                String latitude= resultSet.getString(13);
                String longitude= resultSet.getString(14);
                String mlevel= resultSet.getString(15);

                attractions.add(new Attraction(contentID,contentTypeID,title,addr1,addr2,zipcode,tel,firstImage,firstImage2,Integer.parseInt(readCount),sidoCode,gugunCode,latitude,longitude,mlevel));
            }


        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return attractions;
    }
}
