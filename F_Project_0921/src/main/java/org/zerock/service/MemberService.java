package org.zerock.service;

import org.zerock.domain.MemberVO;

public interface MemberService {

	//회원가입
	public void memberJoin(MemberVO member) throws Exception;
	
	// 아이디 중복 검사
	public int idCheck(MemberVO member);
	
	//public MemberVO memberLogin(MemberVO member);
	
	
}
