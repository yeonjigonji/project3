package org.zerock.service;

import javax.inject.Inject;


import org.springframework.stereotype.Service;

import org.zerock.mapper.MemberMapper;
import org.zerock.domain.MemberVO;

@Service
public class MemberServiceImpl implements MemberService{

	@Inject MemberMapper dao;

	@Override
	public void memberJoin(MemberVO member) throws Exception {
		
		dao.memberJoin(member);
		
	}
	
	/* 아이디 중복 검사 */
	@Override
	public int idCheck(MemberVO member) {
		
		return 0;
	}
	/*
	@Override
	public MemberVO memberLogin(MemberVO member) {
	      
	   return null;
	}*/
	
}
