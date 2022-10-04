package org.zerock.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

// 객체를 반환하는 작업은 JSON이나 XML을 이용합니다.
// 전달된 객체를 생산하기 위해 SampleVO 클래스를 작성합니다.

@Data
@AllArgsConstructor // SampleVO 클래스에 모든 속성을 사용하는 생성자를 만들어줌
@NoArgsConstructor // SampleVO 클래스에 비어 있는 생성자를 만들어줌
public class SampleVO {

	private Integer mno;
	private String firstName;
	private String lastName;
	
	
}
