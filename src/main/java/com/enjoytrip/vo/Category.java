package com.enjoytrip.vo;

import java.util.ArrayList;
import java.util.List;

public class Category {

    String img;
    String code;
    String name;
    static List<Category> categories;


    public Category(String code, String name) {
        this.img = "/assets/img/location/"+name+".jpg";
        this.code = code;
        this.name = name;
    }
    public static List<Category> getCategories(){
        if(categories==null){
            categories =new ArrayList<>();

            categories.add(new Category("1","Seoul"));
            categories.add(new Category("39","Jeju"));
            categories.add(new Category("6","Busan"));
            categories.add(new Category("32","Sokcho"));
            categories.add(new Category("31","Suwon"));
            categories.add(new Category("38","Jeonju"));
            categories.add(new Category("2","Incheon"));
            categories.add(new Category("32","Gangneung"));

        }

        return categories;
    }


    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Category{" +
            "img='" + img + '\'' +
            ", code='" + code + '\'' +
            ", name='" + name + '\'' +
            '}';
    }
}
