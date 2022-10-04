package org.zerock.controller;

import org.springframework.security.access.annotation.Secured;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

// Page613 SampleController 소스 코딩
@Log4j
@RequestMapping("/sample/*")
@Controller
public class SampleController {

	@GetMapping("/all")
	public void doAll() {
		log.info("do all can access everybody : 로그인을 하지 않은 사용자도 접근 가능한 URI");		
	}
	
	@GetMapping("/member")
	public void doMember() {
		log.info("logined member : 로그인 한 사용자들만 접근할 수 있는  URI");		
	}
	
	@GetMapping("/admin")
	public void doAdmin() {
		log.info("admin only : 로그인한 사용자들 중에서 관리자 권한(admin)을 가진 사용자만이 접근할 수 있는 URI");		
	}
	
	// Page701 아래 소스 코딩
	@PreAuthorize("hasAnyRole('ROLE_ADMIN', 'ROLE_MEMBER')")
	@GetMapping("/annoMember")
	public void doMember2() {
		log.info("logined annotation member");
	}
	
	@Secured({"ROLE_ADMIN"})
	@GetMapping("/annoAdmin")
	public void doAdmin2() {
		log.info("admin annotation only");
	}
	
}
