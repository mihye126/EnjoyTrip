package com.enjoytrip.vo;

public class User {
    private String id;
    private String pass;
    private String username;
    private String number;
    private String address;
    private String bday;


    public User(String id, String pass) {
    }

    public User(String id, String pass, String username, String number, String address, String bday) {
        this.id = id;
        this.pass = pass;
        this.username = username;
        this.number = number;
        this.address = address;
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
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getBday() {
        return bday;
    }

    public void setBday(String bday) {
        this.bday = bday;
    }
}
