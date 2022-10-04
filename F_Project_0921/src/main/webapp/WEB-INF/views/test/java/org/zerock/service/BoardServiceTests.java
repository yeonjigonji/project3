package org.zerock.service;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.mapper.BoardMapperTests;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardServiceTests {
	
	@Setter(onMethod_ = {@Autowired})
	private BoardService service;

	/*
	@Test
	public void testExist() {
		log.info(service);
		assertNotNull(service);
	}
	
	// 등록(register) 작업의 기능 구현과 테스트
	@Test
	public void testRegister() {
		BoardVO board = new BoardVO();
		board.setTitle("오늘 새로 작성하는 글입니다!");
		board.setContent("오늘 새로 작성하는 내용입니다!");
		board.setWriter("전지현");
		
		service.register(board);
		log.info("생성된 게시물의 번호 : " + board.getBno());
	}
	*/
	
	// 글목록(리스트) 작업의 기능 구현과 테스트
	@Test
	public void testGetList() {
		// service.getList().forEach(board -> log.info(board));
		service.getList(new Criteria(2, 10)).forEach(board -> log.info(board));
	}
	
	/* 
	// 특정 글 조회 작업의 기능 구현과 테스트
	@Test
	public void testGet() {
		// 1번 글의 상세 정보를 로그 정보로 표시해 줍니다.
		log.info(service.get(1L));  
	}
	
	// 글 삭제 기능 구현과 테스트
	@Test
	public void testDelete() {
		// 게시물 번호의 존재 여부를 확인하고 테스트를 진행 처리함.
		// testDelete()의 경우, 해당 게시물이 존재할 때 true를 반환하는 것을 확인합니다.
		log.info("REMOVE RESULT : " + service.remove(2L)); // 2번글 삭제
	}
	
	@Test
	public void testUpdate() {
		// testUpdate()의 경우, 특정한 게시물(여기서는 1번글)을 먼저 조회하고,		
		BoardVO board = service.get(1L); // 1번글 수정
		
		if (board == null) {
			return;
		}
		// 아래의 소스 코드에서 title 값을 수정한 후에, 이를 업데이트 처리 합니다.
		board.setTitle("1번 글의 제목을 수정합니다!");
		log.info("MODIFY RESULT : " + service.modify(board));
	}
	*/
}











