package org.zerock.controller;

import java.io.Writer;
import java.net.URLEncoder;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.MemberVO;
import org.zerock.service.MemberService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
//@RequestMapping(value = "/member")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject MemberService service;
    
    @Inject BCryptPasswordEncoder pwdEncoder;
	
	
	//회원가입 페이지 이동
	@RequestMapping(value = "join", method = RequestMethod.GET)
	public void joinGET() {
		
		logger.info("회원가입 페이지 진입");
				
	}
	
    // 회원가입
    @RequestMapping(value = "/join", method = RequestMethod.POST)
    public String joinPOST(MemberVO member, HttpServletResponse response) throws Exception {

       int result = service.idCheck(member);
       try {
          if (result == 1) {
             Writer out = response.getWriter();
             String message = URLEncoder.encode("이미 사용중인 아이디입니다.", "UTF-8");
             response.setContentType("text/html; charset=UTF-8");
             out.write("<script type=\"text/javascript\">alert(decodeURIComponent('" + message
                   + "'.replace(/\\+/g, '%20'))); window.history.go(-1);</script>");
             out.flush();
             response.flushBuffer();
             out.close();
             log.info("중복된 아이디입니다");
             return "redirect:/customSignup";
             
          } else if (result == 0) {
             String inputPass = member.getUserpw();
             String pwd = pwdEncoder.encode(inputPass);
             member.setUserpw(pwd);

             service.memberJoin(member);
             Writer out = response.getWriter();
             String message = URLEncoder.encode("회원가입에 성공하셨습니다.", "UTF-8");
             response.setContentType("text/html; charset=UTF-8");
             out.write("<script type=\"text/javascript\">alert(decodeURIComponent('" + message
                   + "'.replace(/\\+/g, '%20')));location.href = \'/customLogin\';</script>");
             out.flush();
             response.flushBuffer();
             out.close();
          }
          // 요기에서~ 입력된 아이디가 존재한다면 -> 다시 회원가입 페이지로 돌아가기
          // 존재하지 않는다면 -> register
       } catch (Exception e) {
//           throw new RuntimeException();
                    return "customSignup";
       }
       return "home";
    }
	
	//로그인 페이지 이동
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public void loginGET() {
		
		logger.info("로그인 페이지 진입");
		
	}
	
	// 아이디 중복 검사
	@RequestMapping(value = "/memberIdChk", method = RequestMethod.POST)
	@ResponseBody
	public String memberIdChkPOST(MemberVO memberId) throws Exception{
			
		//logger.info("memberIdChk() 진입");
		
		int result = service.idCheck(memberId);
		
		logger.info("결과값 = " + result);
		
		if(result != 0) {
			return "fail";	// 중복 아이디가 존재
		} else {
			return "success";	// 중복 아이디 x
		}
			
	} // memberIdChkPOST() 종료
	
	/* 로그인 */
	/*
    @RequestMapping(value="/login", method=RequestMethod.POST)
    public String loginPOST(HttpServletRequest request, MemberVO member, RedirectAttributes rttr) throws Exception{
        
        //System.out.println("login 메서드 진입");
        //System.out.println("전달된 데이터 : " + member);
    	
    	HttpSession session = request.getSession();
    	String rawPw = "";
        String encodePw = "";
        
    	MemberVO lvo = service.memberLogin(member);
        
    	if(lvo != null) {            // 일치하는 아이디 존재시
            
        rawPw = member.getUserpw();        // 사용자가 제출한 비밀번호
        encodePw = lvo.getUserpw();        // 데이터베이스에 저장한 인코딩된 비밀번호
            
        if(true == pwdEncoder.matches(rawPw, encodePw)) {        // 비밀번호 일치여부 판단
                
            lvo.setUserpw("");                    // 인코딩된 비밀번호 정보 지움
            session.setAttribute("member", lvo);     // session에 사용자의 정보 저장
            return "redirect:/main";        // 메인페이지 이동
        } else {
 
            rttr.addFlashAttribute("result", 0);            
            return "redirect:/member/login";    // 로그인 페이지로 이동
            }
        } else {                    // 일치하는 아이디가 존재하지 않을 시 (로그인 실패)
            rttr.addFlashAttribute("result", 0);            
            return "redirect:/member/login";    // 로그인 페이지로 이동
        }
	
    }
    */
    /* 메인페이지 로그아웃 */
    @RequestMapping(value="logout.do", method=RequestMethod.GET)
    public String logoutMainGET(HttpServletRequest request) throws Exception{
        
    	logger.info("logoutMainGET메서드 진입");
        
        HttpSession session = request.getSession(); // 세션 변수 초기화
        
        session.invalidate(); // invalidate()" 메서드의 경우 세션 전체를 무효화하는 메서드, "removeAttribute()"의 경우 특정 이름으로 네이밍 한 session 객체를 타기팅하여 삭제하는 메서드
        


        
        return "redirect:/";
        

    	
    }
    
    /* 비동기방식 로그아웃 메서드 */
    @RequestMapping(value="logout.do", method=RequestMethod.POST)
    @ResponseBody
    public void logoutPOST(HttpServletRequest request) throws Exception{
        
        logger.info("비동기 로그아웃 메서드 진입");
        
        HttpSession session = request.getSession();
        
        session.invalidate();
        
    }
}

