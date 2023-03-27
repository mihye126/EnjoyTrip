package com.enjoytrip.dao;

import com.enjoytrip.util.DBUtil;
import com.enjoytrip.vo.Sido;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SidoDAOImpl implements SidoDAO{
    DBUtil util;
    static List<Sido> sidos;

    public SidoDAOImpl() {
        util=DBUtil.getInstance();
        sidos=new ArrayList<>();
    }

    @Override
    public List<Sido> getSido() {

            try {
                Connection connection=util.getConnection();
                sidos.clear();
                String q="select sido_code, sido_name from sido";
                PreparedStatement statement= connection.prepareStatement(q);
                ResultSet resultSet=statement.executeQuery();

                while (resultSet.next()){
                    String code=resultSet.getString(1);
                    String name=resultSet.getString(2);
                    Sido sido=new Sido(name,code);
                    sidos.add(sido);
                }


            } catch (SQLException e) {
                throw new RuntimeException(e);
            }

        return sidos;
    }

}
