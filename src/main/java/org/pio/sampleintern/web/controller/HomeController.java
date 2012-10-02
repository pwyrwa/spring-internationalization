package org.pio.sampleintern.web.controller;

import org.joda.time.DateTime;
import org.pio.sampleintern.web.model.HomeModel;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Home Controller
 *
 * All Request to "/home" start here
 */
@Controller
@RequestMapping("/home")
public class HomeController {

    private static final Logger LOG = LoggerFactory.getLogger(HomeController.class);

    /**
     * No additional request value mapping, but forces to only GET requests
     *
     * @param model Model - Spring's model
     * @return String viewForInternalViewResolver
     */
    @RequestMapping(method = RequestMethod.GET)
    public String showHomePage(@ModelAttribute("model") HomeModel model) {
        LOG.info("Accessing main page");

        model.setToday(DateTime.now().minusDays(1));
        model.setSize(20000);

        return "home/home";
    }
}
