package org.zerock.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/admin")
public class AdminController {
 
    private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
    
    /* 愿�由ъ옄 硫붿씤 �럹�씠吏� �씠�룞 */
    @RequestMapping(value="main", method = RequestMethod.GET)
    public void adminMainGET() throws Exception{
        
        logger.info("愿�由ъ옄 �럹�씠吏� �씠�룞");
        
    }
    
}
