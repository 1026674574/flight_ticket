package com.soecode.lyf.entity;

public class Flight {
    private int id;
    private String idcar;
    private int state;
    private int  start;
    private int end;
    private String start_time;
    private String end_time;
    private String date;
    private int price_1;
    private int price_2;
    private int price_3;
    private int number_1;
    private int number_2;
    private int number_3;
    private City cityStart;
    private City cityEnd;

    public City getCityEnd() {
        return cityEnd;
    }

    public void setCityEnd(City cityEnd) {
        this.cityEnd = cityEnd;
    }

    public City getCityStart() {
        return cityStart;
    }

    public void setCityStart(City cityStart) {
        this.cityStart = cityStart;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getIdcar() {
        return idcar;
    }

    public void setIdcar(String idcar) {
        this.idcar = idcar;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public int getStart() {
        return start;
    }

    public void setStart(int start) {
        this.start = start;
    }

    public int getEnd() {
        return end;
    }

    public void setEnd(int end) {
        this.end = end;
    }

    public String getStart_time() {
        return start_time;
    }

    public void setStart_time(String start_time) {
        this.start_time = start_time;
    }

    public String getEnd_time() {
        return end_time;
    }

    public void setEnd_time(String end_time) {
        this.end_time = end_time;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getPrice_1() {
        return price_1;
    }

    public void setPrice_1(int price_1) {
        this.price_1 = price_1;
    }

    public int getPrice_2() {
        return price_2;
    }

    public void setPrice_2(int price_2) {
        this.price_2 = price_2;
    }

    public int getPrice_3() {
        return price_3;
    }

    public void setPrice_3(int price_3) {
        this.price_3 = price_3;
    }

    public int getNumber_1() {
        return number_1;
    }

    public void setNumber_1(int number_1) {
        this.number_1 = number_1;
    }

    public int getNumber_2() {
        return number_2;
    }

    public void setNumber_2(int number_2) {
        this.number_2 = number_2;
    }

    public int getNumber_3() {
        return number_3;
    }

    public void setNumber_3(int number_3) {
        this.number_3 = number_3;
    }
}
