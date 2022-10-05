package org.zerock.domain;

import org.springframework.web.util.UriComponentsBuilder;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

// Criteria는 '검색의 기준'을 의미하는 네이밍입니다.
@Getter @Setter @ToString
public class ECriteria {

	private int pageNum; // 페이지 번호(pageNum)
	private int amount; // 한 페이지당 몇개의 데이터(amount)
	
	private String type;
	private String keyword;
		
	// 생성자를 통해 기본값을 1페이지, 한 페이지당 10개의 데이터로 지정해서 처리합니다.
	public ECriteria() {
		this(1, 10);
	}

	
	public ECriteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}

	public String[] getTypeArr() {
		return type == null ? new String[] {} : type.split("");
	}

	public String getListLink() {
		UriComponentsBuilder builder = UriComponentsBuilder.fromPath("")
				.queryParam("pageNum", this.pageNum)
				.queryParam("amount", this.getAmount())
				.queryParam("type", this.getType())
				.queryParam("keyword", this.getKeyword());
		return builder.toUriString();
	}
	
}



