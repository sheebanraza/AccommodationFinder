package controller;

import facebook4j.FacebookException;
import model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import service.AccommodationFinderService;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by Sheeban on 11/17/2015.
 */

@Controller
public class AccommodationFinderController {

    @Autowired
    private AccommodationFinderService accommodationFinderService;

    @RequestMapping(value = "/authenticateUser/AccommodationFinder.htm")
    public ModelAndView authenticateUser(@ModelAttribute User user,
                                         HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws FacebookException {

        ModelAndView modelAndView = new ModelAndView();
        String userName = httpServletRequest.getParameter("inputUsername");
        String password = httpServletRequest.getParameter("password");
        accommodationFinderService.checkUser();

        return modelAndView;

    }



}
