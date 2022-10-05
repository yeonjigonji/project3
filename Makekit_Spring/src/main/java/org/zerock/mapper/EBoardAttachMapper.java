package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.EBoardAttachVO;

public interface EBoardAttachMapper {

	// Page552 ~ Page553 BoardAttachMapper 인터페이스의 경우,
	// 첨부파일의 수정이라는 개념이 존재하지 않기 때문에, insert()와 delete() 작업만을
	// 등록 처리 합니다. 특정 게시물의 번호로 첨부파일을 찾는 작업이 필요하므로
	// findByBno() 메서드를 정의했습니다.
	public void einsert(EBoardAttachVO vo);
	public void edelete(String uuid);
	public List<EBoardAttachVO> efindByBno(Long bno);
	
	// Page578 첨부파일의 삭제 처리
	public void edeleteAll(Long bno);
	
	// Page600 getOldFiles() 추상 메서드 정의
	public List<EBoardAttachVO> egetOldFiles();	
	
}
