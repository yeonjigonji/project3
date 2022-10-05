package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.Criteria;
import org.zerock.domain.MemberVO;

public interface MemberMapper {

	// Page662 MemberMapper 인터페이스 생성 후 read() 추상 메서드 정의함.
	public MemberVO read(String userid);
	
	// 회원가입
	public void memberJoin(MemberVO member) throws Exception;

	public int idCheck(MemberVO member);

	/* 로그인 */
    //public MemberVO memberLogin(MemberVO member);
	
	// 회원 정보 리스트
	public List<MemberVO> getList();
		
	public List<MemberVO> getListWithPaging(Criteria cri);
		
	public int getTotalCount(Criteria cri);	
}
