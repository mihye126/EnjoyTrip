package com.enjoytrip.dao;

import com.enjoytrip.vo.Notice;

import java.util.ArrayList;

public interface NoticeDAO {
    ArrayList<Notice> selectAll();

    Notice selectOne(String num);
    int insert(Notice n);//새글 등록

    int delete(String num);


}
