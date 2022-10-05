package org.zerock.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	//硫붿씤 �럹�씠吏� �씠�룞
		@RequestMapping(value = "/main", method = RequestMethod.GET)
		public void mainPageGET() {
			
			logger.info("硫붿씤 �럹�씠吏� 吏꾩엯");
			
		}
	
}
