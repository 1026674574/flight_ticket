package com.soecode.lyf.service.impl;

import com.soecode.lyf.dao.FlightDao;
import com.soecode.lyf.entity.Flight;
import com.soecode.lyf.service.FlightService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class FlightServiceImpl implements FlightService {

    @Autowired
    private FlightDao flightDao;
    @Override
    public ArrayList<Flight> getFlightList() {
        ArrayList<Flight> flightList = flightDao.getFlightList();
        for (Flight flight : flightList) {
            flight.setCityStart(flightDao.getCity(flight.getStart()));
            flight.setCityEnd(flightDao.getCity(flight.getEnd()));
        }
        return flightList;
    }
}
