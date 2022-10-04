package org.zerock.service;

import java.util.List;

import org.zerock.domain.EBoardAttachVO;
import org.zerock.domain.EBoardVO;
import org.zerock.domain.ECriteria;

public interface EBoardService {

	// register() 추상 메서드 정의
	public void register(EBoardVO board);
	
	// 특정한 게시물 정보를 가져오는 get() 추상 메서드 정의
	public EBoardVO get(Long bno);
	
	// modify() 추상 메서드 정의
	public boolean modify(EBoardVO board);
	
	// remove() 추상 메서드 정의
	public boolean remove(Long bno);
	
	// 전체 리스트 정보를 가져오는 getList() 추상 메서드 정의
	// public List<BoardVO> getList();  // 앞서 getList() 메서드를 수정합니다.
	public List<EBoardVO> getList(ECriteria cri);
	
	// Page323 BoardService 구문 추가
	// BoardService의 getTotal()에 굳이 Criteria는 파라미터로 전달될 필요가 없기는 하지만,
	// 목록과 전체 데이터 개수는 항상 같이 동작하는 경우가 많기 때문에 파라미터로 지정합니다.
	public int getTotal(ECriteria cri);	
	
	// Page569 : getAttachList() 를 추가해서 게시물의 첨부파일들의 목록을 가져옵니다.
	public List<EBoardAttachVO> getAttachList(Long bno);
	
	
}
