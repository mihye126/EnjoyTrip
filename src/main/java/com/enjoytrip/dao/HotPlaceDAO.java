package com.enjoytrip.dao;

import com.enjoytrip.vo.HotPlace;
import com.enjoytrip.vo.User;
import java.util.List;

public interface HotPlaceDAO {
    List<HotPlace> selectAll();
    HotPlace selectOne(String contentID);
    int delete(String contentID);
    int insert(HotPlace hotPlace);

}
