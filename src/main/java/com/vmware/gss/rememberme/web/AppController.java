package com.vmware.gss.rememberme.web;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AppController {

	private static final Logger logger = LoggerFactory
			.getLogger(AppController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		logger.trace("Unsecured page");
		return "index";
	}

	@RequestMapping(value = "/secure/**", method = RequestMethod.GET)
	public String secure(Locale locale, Model model) {
		logger.trace("Secured page");
		return "secure/index";
	}

}
