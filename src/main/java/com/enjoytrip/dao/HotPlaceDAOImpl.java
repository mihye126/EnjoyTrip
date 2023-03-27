package com.enjoytrip.dao;

import com.enjoytrip.util.DBUtil;
import com.enjoytrip.vo.Attraction;
import com.enjoytrip.vo.HotPlace;
import com.enjoytrip.vo.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;

public class HotPlaceDAOImpl implements HotPlaceDAO{
    DBUtil util;
    static List<HotPlace> hotPlaces;

    public HotPlaceDAOImpl() {
        util=DBUtil.getInstance();
        hotPlaces=new ArrayList<>();
    }

    @Override
    public List<HotPlace> selectAll() {
        try {
            hotPlaces.clear();
            Connection connection= util.getConnection();
            String q="select contentID,content_type_id,title,address,first_image,readcount, overview, user_id,  username from  hotplace join user on hotplace.user_id = user.id";
            PreparedStatement statement=connection.prepareStatement(q);
            ResultSet resultSet=statement.executeQuery();

            while (resultSet.next()){
                String contentID=resultSet.getString(1);
                String contentTypeID=resultSet.getString(2);
                String title=resultSet.getString(3);
                String address=resultSet.getString(4);
                String firstImage=resultSet.getString(5);
                int readCount=Integer.parseInt(resultSet.getString(6));
                String overview=resultSet.getString(7);
                String userID=resultSet.getString(8);
                String username=resultSet.getString(9);

                hotPlaces.add(new HotPlace(contentID,contentTypeID,title,address,firstImage,readCount,overview,userID,username));
            }


        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return hotPlaces;
    }

    @Override
    public HotPlace selectOne(String contentID) {
        HotPlace hotPlace=null;
        try {

            Connection connection= util.getConnection();
            String q="select contentID,content_type_id,title,address,first_image,readcount, overview, user_id,  username from  hotplace join user on hotplace.user_id = user.id where info.content_id=?";
            PreparedStatement statement=connection.prepareStatement(q);
            statement.setString(1,contentID);
            ResultSet resultSet=statement.executeQuery();

            while (resultSet.next()){
                contentID=resultSet.getString(1);
                String contentTypeID=resultSet.getString(2);
                String title=resultSet.getString(3);
                String address=resultSet.getString(4);
                String firstImage=resultSet.getString(5);
                int readCount=Integer.parseInt(resultSet.getString(6));
                String overview=resultSet.getString(7);
                String userID=resultSet.getString(8);
                String username=resultSet.getString(9);

                hotPlace=new HotPlace(contentID,contentTypeID,title,address,firstImage,readCount,overview,userID,username);
            }


        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return hotPlace;
    }

    @Override
    public int delete(String contentID) {
        int flag=0;
        try {
            Connection connection = util.getConnection();
            String q="delete from hotplace where contentID=?";
            PreparedStatement statement= connection.prepareStatement(q);
            statement.setString(1,contentID);
            flag=statement.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return flag;
    }

    @Override
    public int insert(HotPlace hotPlace) {
        int flag=0;
        try {

            Connection connection = util.getConnection();
            String q="INSERT INTO `hotplace` (content_type_id, title, address, first_image,overview,user_id)VALUES (?,?,?,?,?,?,?)";
            PreparedStatement statement= connection.prepareStatement(q);
            statement.setString(1, hotPlace.getContentTypeID());
            statement.setString(2, hotPlace.getTitle());
            statement.setString(3, hotPlace.getAddress());
            statement.setString(4, hotPlace.getFirstImage());
            statement.setString(5, hotPlace.getOverview());
            statement.setString(6, hotPlace.getUserID());

            flag=statement.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return flag;
    }
}
