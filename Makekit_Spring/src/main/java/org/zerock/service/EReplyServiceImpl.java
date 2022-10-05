package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zerock.domain.ECriteria;
import org.zerock.domain.EReplyPageDTO;
import org.zerock.domain.EReplyVO;
import org.zerock.mapper.EBoardMapper;
import org.zerock.mapper.EReplyMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class EReplyServiceImpl implements EReplyService {
	
    @Setter(onMethod_ = @Autowired)
	private EReplyMapper mapper;
    
    // Page484 다음 2줄 소스 추가 코딩해줌.
    @Setter(onMethod_ = @Autowired)
    private EBoardMapper boardMapper;

    // Page485 ReplyServiceImpl의 댓글 등록과 삭제를 담당하는 메서드는
    // @Transactional의 처리를 해줍니다.
    @Transactional
	@Override
	public int register(EReplyVO vo) {
		log.info("register.... register 처리!" + vo);
		// Page485 다음 1줄 소스 추가 코딩해줌.
		boardMapper.eupdateReplyCnt(vo.getBno(), 1);
		
		return mapper.einsert(vo);
	}

	@Override
	public EReplyVO get(Long rno) {
		log.info("get.... get 처리!" + rno);
		return mapper.eread(rno);
	}

	@Override
	public int modify(EReplyVO vo) {
		log.info("modify.... modify 처리!" + vo);
		return mapper.eupdate(vo);
	}

	// Page485 ReplyServiceImpl의 댓글 등록과 삭제를 담당하는 메서드는
    // @Transactional의 처리를 해줍니다.
	@Transactional
	@Override
	public int remove(Long rno) {
		log.info("remove.... remove 처리!" + rno);
		
		// Page485 다음 2줄 소스 추가 코딩해줌.
		EReplyVO vo = mapper.eread(rno);		
		boardMapper.eupdateReplyCnt(vo.getBno(), -1);
		
		return mapper.edelete(rno);
	}

	@Override
	public List<EReplyVO> getList(ECriteria cri, Long bno) {
		log.info("get Reply List of a Board~! " + bno);
		return mapper.egetListWithPaging(cri, bno);
	}

	@Override
	public EReplyPageDTO getListPage(ECriteria cri, Long bno) {
		return new EReplyPageDTO(mapper.egetCountByBno(bno), mapper.egetListWithPaging(cri, bno));
	}
	
	
	
}




