package com.enjoytrip.vo;

public class Notice {

    private String num;
    private String wdate;
    private String title;
    private String content;


    public Notice(String num, String wdate, String title, String content) {
        this.num = num;
        this.wdate = wdate;
        this.title = title;
        this.content = content;
    }

    public String getNum() {
        return num;
    }

    public void setNum(String num) {
        this.num = num;
    }

    public String getWdate() {
        return wdate;
    }

    public void setWdate(String wdate) {
        this.wdate = wdate;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "Notice{" +
            "num='" + num + '\'' +
            ", wdate='" + wdate + '\'' +
            ", title='" + title + '\'' +
            ", content='" + content + '\'' +
            '}';
    }
}
