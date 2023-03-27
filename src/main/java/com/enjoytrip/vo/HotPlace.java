package com.enjoytrip.vo;

public class HotPlace {
    String contentID;
    String contentTypeID;
    String title;
    String address;
    String firstImage;
    int readcount;
    String overview;

    String userID;
    String userName;

    public HotPlace(String contentID, String contentTypeID, String title, String address,
        String firstImage, int readcount, String overview, String userID, String userName) {
        this.contentID = contentID;
        this.contentTypeID = contentTypeID;
        this.title = title;
        this.address = address;
        this.firstImage = firstImage;
        this.readcount = readcount;
        this.overview = overview;
        this.userID = userID;
        this.userName = userName;
    }

    public String getContentID() {
        return contentID;
    }

    public void setContentID(String contentID) {
        this.contentID = contentID;
    }

    public String getContentTypeID() {
        return contentTypeID;
    }

    public void setContentTypeID(String contentTypeID) {
        this.contentTypeID = contentTypeID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getFirstImage() {
        return firstImage;
    }

    public void setFirstImage(String firstImage) {
        this.firstImage = firstImage;
    }

    public int getReadcount() {
        return readcount;
    }

    public void setReadcount(int readcount) {
        this.readcount = readcount;
    }

    public String getOverview() {
        return overview;
    }

    public void setOverview(String overview) {
        this.overview = overview;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    @Override
    public String toString() {
        return "HotPlace{" +
            "contentID='" + contentID + '\'' +
            ", contentTypeID='" + contentTypeID + '\'' +
            ", title='" + title + '\'' +
            ", address='" + address + '\'' +
            ", firstImage='" + firstImage + '\'' +
            ", readcount=" + readcount +
            ", overview='" + overview + '\'' +
            ", userID='" + userID + '\'' +
            ", userName='" + userName + '\'' +
            '}';
    }
}
