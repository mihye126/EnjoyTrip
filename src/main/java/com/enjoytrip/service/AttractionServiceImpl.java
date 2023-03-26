package com.enjoytrip.service;

import com.enjoytrip.dao.AttractionDAO;
import com.enjoytrip.dao.AttractionDAOImpl;
import com.enjoytrip.vo.Attraction;
import java.util.List;

public class AttractionServiceImpl  implements AttractionService{

    AttractionDAO dao;

    public AttractionServiceImpl() {
        this.dao = new AttractionDAOImpl();
    }

    @Override
    public Attraction selectOne(String contentID) {
        return dao.selectOne(contentID);
    }

    @Override
    public List<Attraction> search(String sidoCode, String contentTypeID) {
        return dao.search(sidoCode,contentTypeID);
    }
}
