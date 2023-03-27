package com.enjoytrip.service;

import com.enjoytrip.dao.HotPlaceDAO;
import com.enjoytrip.dao.HotPlaceDAOImpl;
import com.enjoytrip.vo.HotPlace;
import java.util.List;

public class HotPlaceServiceImpl implements HotPlaceService{

    HotPlaceDAO dao;

    public HotPlaceServiceImpl() {
        dao=new HotPlaceDAOImpl();
    }

    @Override
    public List<HotPlace> selectAll() {
        return dao.selectAll();
    }

    @Override
    public HotPlace selectOne(String contentID) {
        return dao.selectOne(contentID);
    }

    @Override
    public int delete(String contentID) {
        return dao.delete(contentID);
    }

    @Override
    public int insert(HotPlace hotPlace) {
        return dao.insert(hotPlace);
    }
}
