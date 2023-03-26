package com.enjoytrip.vo;

public class Sido {

    String name;
    String code;

    public Sido(String name, String code) {
        this.name = name;
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    @Override
    public String toString() {
        return "Sido{" +
            "name='" + name + '\'' +
            ", code='" + code + '\'' +
            '}';
    }
}
