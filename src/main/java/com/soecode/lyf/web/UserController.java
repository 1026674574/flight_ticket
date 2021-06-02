package com.soecode.lyf.web;
import com.soecode.lyf.entity.Flight;
import com.soecode.lyf.entity.User;
import com.soecode.lyf.service.FlightService;
import com.soecode.lyf.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;


@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private FlightService flightService;

    @RequestMapping("/index")
    public String index(Model model){
        ArrayList<Flight> flightList = flightService.getFlightList();
        model.addAttribute("flightList",flightList);
        return "index";
    }

@RequestMapping("/login")
private String login(){
        return "login";

}
    @RequestMapping("/logining")
    private String logining(String username,String password){
        User user = new User();
        user.setName(username);
        user.setPassword(password);
        User user1 = userService.login(user);
        if (user1!=null)
            return "index";
        return "login";
    }
}
