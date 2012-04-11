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
@RequestMapping("/bbq")
public class BBQController {

    static final String BBQ_VIEW = "home/bbq";

    private static final Logger LOG = LoggerFactory.getLogger(BBQController.class);

    @RequestMapping(method = RequestMethod.GET)
    public String showPage() {
        LOG.debug("Accessing bbq page");
        return BBQ_VIEW;
    }

}
