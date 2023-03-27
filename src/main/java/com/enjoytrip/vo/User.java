package com.enjoytrip.vo;

public class User {
    private String id;
    private String pass;
    private String username;
    private String num;
    private String bday;


    public User() {
    }

    public User(String id, String pass) {
        this.id = id;
        this.pass = pass;
    }

    public User(String id, String pass, String username) {
        this.id = id;
        this.pass = pass;
        this.username = username;
    }

    public User(String id, String pass, String username, String num, String bday) {
        this.id = id;
        this.pass = pass;
        this.username = username;
        this.num = num;
        this.bday = bday;
    }

    public String getId() {
        return id; //email 형식이어야함
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getNumber() {
        return num;
    }

    public void setNumber(String num) {
        this.num = num;
    }

    public String getBday() {
        return bday;
    }

    public void setBday(String bday) {
        this.bday = bday;
    }
}
