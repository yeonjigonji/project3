package org.zerock.service;

import java.util.List;

import org.zerock.domain.ECriteria;
import org.zerock.domain.EReplyPageDTO;
import org.zerock.domain.EReplyVO;

public interface EReplyService {

	public int register(EReplyVO vo);
	public EReplyVO get(Long rno);
	public int modify(EReplyVO vo);
	public int remove(Long rno);
	public List<EReplyVO> getList(ECriteria cri, Long bno);
	
	// Page434 상단 ReplyService 인터페이스에 getListPage() 추상 메서드 정의
	public EReplyPageDTO getListPage(ECriteria cri, Long bno);
	
}
