package org.pio.sampleintern.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Other controller
 *
 * All Request to "/other" start here
 */
@Controller
@RequestMapping("/other")
public class OtherController {

    static final String OTHER_VIEW = "home/other";

    private static final Logger LOG = LoggerFactory.getLogger(OtherController.class);

    @RequestMapping(method = RequestMethod.GET)
    public String showPage() {
        LOG.debug("Accessing other page");
        return OTHER_VIEW;
    }

}
