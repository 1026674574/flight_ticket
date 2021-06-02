package com.soecode.lyf.entity;

public class Ticket {
    private int id;
    private int order_id;
    private int state;
    private String time;
    private int flight_class;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public int getFlight_class() {
        return flight_class;
    }

    public void setFlight_class(int flight_class) {
        this.flight_class = flight_class;
    }
}
