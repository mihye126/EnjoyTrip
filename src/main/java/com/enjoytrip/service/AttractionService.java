package com.enjoytrip.service;

import com.enjoytrip.vo.Attraction;
import java.util.List;

public interface AttractionService {

    Attraction selectOne(String contentID);
    List<Attraction> search(String sidoCode, String contentTypeID);




}
