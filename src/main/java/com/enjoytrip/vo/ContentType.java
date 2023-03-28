package com.enjoytrip.vo;

import java.util.ArrayList;
import java.util.List;

public class ContentType {
    String contentTypeID;
    String contentTypeName;
    static List<ContentType> contentTypes;

    public ContentType(String contentTypeID, String contentTypeName) {
        this.contentTypeID = contentTypeID;
        this.contentTypeName = contentTypeName;
    }
    public static List<ContentType> getContentType(){
        if(contentTypes==null){
            contentTypes=new ArrayList<>();

            contentTypes.add(new ContentType("12","관광지"));
            contentTypes.add(new ContentType("14","문화시설"));
            contentTypes.add(new ContentType("15","축제공연행사"));
            contentTypes.add(new ContentType("25","여행코스"));
            contentTypes.add(new ContentType("28","레포츠"));
            contentTypes.add(new ContentType("32","숙박"));
            contentTypes.add(new ContentType("38","쇼핑"));
            contentTypes.add(new ContentType("39","음식점"));

        }

        return contentTypes;
    }
    public String getContentTypeID() {
        return contentTypeID;
    }

    public void setContentTypeID(String contentTypeID) {
        this.contentTypeID = contentTypeID;
    }

    public String getContentTypeName() {
        return contentTypeName;
    }

    public void setContentTypeName(String contentTypeName) {
        this.contentTypeName = contentTypeName;
    }

    @Override
    public String toString() {
        return "ContentType{" +
            "contentTypeID='" + contentTypeID + '\'' +
            ", contentTypeName='" + contentTypeName + '\'' +
            '}';
    }
}
