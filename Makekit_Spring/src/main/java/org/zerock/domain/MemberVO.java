package org.zerock.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

// Page660 회원 도메인 : tbl_member 테이블을 MyBatis를 이용하는
//                   코드로 처리하기 위해 코딩함
@Data
public class MemberVO {

	private String userid;
	private String userpw;
	private String username;
	private String usermail;
	private String useraddr1;
	private String useraddr2;
	private String useraddr3;
	
	private boolean enabled;
	
	private Date regDate;
	private Date updateDate;
	
	// MemberVO 클래스는 내부적으로 여러 개의 사용자 권한을 가질 수 있는 구조로 설계합니다.
	private List<AuthVO> authList;	
	
}
