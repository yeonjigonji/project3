package org.zerock.service;

import java.util.List;

import javax.inject.Inject;


import org.springframework.stereotype.Service;

import org.zerock.mapper.MemberMapper;
import org.zerock.domain.Criteria;
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
	      int result = dao.idCheck(member);
	         return result;

	   }

	   @Override
		public List<MemberVO> getList(Criteria cri) {
			
			return dao.getListWithPaging(cri);
		}
		
		@Override
		public int getTotal(Criteria cri) {

			return dao.getTotalCount(cri);
		}
	
}
