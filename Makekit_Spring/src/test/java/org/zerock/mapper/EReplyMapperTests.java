package org.zerock.mapper;

import static org.junit.Assert.fail;

import java.util.List;
import java.util.stream.IntStream;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.ECriteria;
import org.zerock.domain.EReplyVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class EReplyMapperTests {

	// 테스트 전에 아래 번호의 게시물이 존재하는지 반드시 확인하시기 바랍니다.
	private Long[] bnoArr = {721003L, 721002L, 721001L, 720995L, 720997L};	
	
	@Setter(onMethod_ = @Autowired)
	private EReplyMapper mapper;

	@Test // testMapper() 메서드를 통해 ReplyMapper 타입의 객체가 정상적으로 사용이 가능한지 확인합니다.
	public void testMapper() {
		log.info(mapper);
	}
	
	@Test
	public void testCreate() {
		// rangeClosed 메서드는 종료값을 포함해서 반환합니다.
		IntStream.rangeClosed(1, 10).forEach(i -> {
			EReplyVO vo = new EReplyVO();
			
			// 게시물의 번호
			vo.setBno(bnoArr[i%5]);
			vo.setReply("댓글 테스트 " + i);
			vo.setReplyer("replyer" + i);
			
			mapper.einsert(vo);
		});
	}
	
	@Test
	public void testRead() {
		Long targetRno = 5L;  // 5번 댓글을 조회 확인함
		EReplyVO vo = mapper.eread(targetRno);
		
		log.info(vo);
	}
	
	@Test
	public void testDelete() {
		Long targetRno = 1L;  // DB에서 rno 1번 삭제를 확인 바랍니다.
		mapper.edelete(targetRno);
	}
	
	@Test
	public void testUpdate() {
		Long targetRno = 10L;  // rno 10번 reply 글을 수정 처리 합니다!
		EReplyVO vo = mapper.eread(targetRno);
		vo.setReply("Update Reply 댓글 수정 입력 ");
		int count = mapper.eupdate(vo);
		
		log.info("UPDATE COUNT : " + count);
	}
	
	// 테스트 코드에서는 현재 데이터베이스에 추가되어 있는 댓글들의 게시물 번호로 확인합니다.
	@Test
	public void testList() {
		ECriteria cri = new ECriteria();
		// bnoArr[0] = 위에 private Long[] bnoArr의 요소인 721003L을 확인합니다.
		List<EReplyVO> replies = mapper.egetListWithPaging(cri, bnoArr[0]);
		replies.forEach(reply -> log.info(reply));
	}
	
	// Page 431 ReplyMapperTests JUnit 실행 확인 : 2페이지에 해당하는 게시물인지 확인
	@Test
	public void testList2() {
		
		ECriteria cri = new ECriteria(2, 10);
		// 721003L
		List<EReplyVO> replies = mapper.egetListWithPaging(cri, 721003L);
		replies.forEach(reply -> log.info(reply));
	}

}
