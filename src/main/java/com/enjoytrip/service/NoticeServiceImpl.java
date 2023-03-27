package com.enjoytrip.service;

import com.enjoytrip.dao.NoticeDAO;
import com.enjoytrip.dao.NoticeDAOImpl;
import com.enjoytrip.vo.Notice;

import java.util.ArrayList;

public class NoticeServiceImpl implements NoticeService{
    NoticeDAO dao;

    public NoticeServiceImpl() {
        dao=new NoticeDAOImpl();
    }

    @Override
    public ArrayList<Notice> selectAll() {
        return dao.selectAll();
    }

    @Override
    public Notice selectOne(String num) {
        return dao.selectOne(num);
    }

    @Override
    public int insert(Notice n) {
        return dao.insert(n);
    }

    @Override
    public int delete(String num) {
        return dao.delete(num);
    }
}
