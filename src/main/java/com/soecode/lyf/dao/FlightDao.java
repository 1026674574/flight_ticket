package com.soecode.lyf.dao;

import com.soecode.lyf.entity.City;
import com.soecode.lyf.entity.Flight;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;

public interface FlightDao {
    ArrayList<Flight> getFlightList();
    City getCity(@Param("id") int  id);
}
