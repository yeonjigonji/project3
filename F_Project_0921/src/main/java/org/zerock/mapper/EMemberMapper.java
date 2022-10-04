package org.zerock.mapper;

import org.zerock.domain.EMemberVO;

public interface EMemberMapper {

	// Page662 MemberMapper 인터페이스 생성 후 read() 추상 메서드 정의함.
	public EMemberVO eread(String userid);
	
	
}
