package com.enjoytrip.service;

import com.enjoytrip.vo.Notice;

import java.util.ArrayList;

public interface NoticeService {
    ArrayList<Notice> selectAll();//모든글 목록
    Notice selectOne(String num);//해당 번호의 글 한 개
    int insert(Notice n);//새글 등록
    int delete(String num);//해당 번호의 글 삭제
}
