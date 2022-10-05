package org.zerock.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.domain.ECriteria;
import org.zerock.domain.EReplyPageDTO;
import org.zerock.domain.EReplyVO;
import org.zerock.service.EReplyService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RequestMapping("/Ereplies/")
@RestController
@Log4j
@AllArgsConstructor
public class EReplyController {
	
	private EReplyService service;
	

	@PreAuthorize("isAuthenticated()")
	@PostMapping(value = "/new", consumes = "application/json", produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> create(@RequestBody EReplyVO vo){
		log.info("ReplyVO~ ♥-♥ : " + vo);
		int insertCount = service.register(vo);
		log.info("Reply INSERT COUNT~ ＠-＠ : " + insertCount);
		return insertCount == 1 ? new ResponseEntity<>("success", HttpStatus.OK) : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}

	@GetMapping(value = "/pages/{bno}/{page}", produces = {
			MediaType.APPLICATION_XML_VALUE,
			MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<EReplyPageDTO> getList(@PathVariable("page") int page, @PathVariable("bno") Long bno){	
		
	ECriteria cri = new ECriteria(page, 10);
	log.info("get Reply List bno : " + bno); // 옆에는 Page 435 코딩 내용임
	log.info("cri : " + cri);
	return new ResponseEntity<>(service.getListPage(cri, bno), HttpStatus.OK);
	}

	@GetMapping(value = "/{rno}", produces = {
			MediaType.APPLICATION_XML_VALUE,
			MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<EReplyVO> get(@PathVariable("rno") Long rno){
		log.info("get...처리 확인~ ◎-◎/ : " + rno);
		return new ResponseEntity<>(service.get(rno), HttpStatus.OK);
	}

	@PreAuthorize("principal.username == #vo.replyer")
	@DeleteMapping(value = "/delete/{rno}", produces = {
			MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> remove(@RequestBody EReplyVO vo, @PathVariable("rno") Long rno){
		log.info("remove...처리 확인~ ◆-◆/ : " + rno);
		log.info("reployer : " + vo.getReplyer());
		return service.remove(rno) == 1 ? new ResponseEntity<>("success", HttpStatus.OK) : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}

	@RequestMapping(method = {RequestMethod.PUT, RequestMethod.PATCH}, value = "/request/{rno}", consumes = "application/json", produces = {
			MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> modify(@RequestBody EReplyVO vo, @PathVariable("rno") Long rno){
		vo.setRno(rno);
		log.info("rno : ▼-▼/ : " + rno);
		log.info("modify : ＆-＆/ : " + vo);
		return service.modify(vo) == 1 ? new ResponseEntity<>("success", HttpStatus.OK) : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
}
