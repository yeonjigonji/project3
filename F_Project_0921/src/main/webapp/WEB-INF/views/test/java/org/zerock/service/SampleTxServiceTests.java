package org.zerock.service;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class SampleTxServiceTests {

	@Setter(onMethod_ = {@Autowired})
	private SampleTxService service;

	// testLong() 메서드는 50bytes가 넘고 500bytes를 넘지 않는 길이의 더미 데이터
	// 문자열을 이용해서 tbl_sample1, tbl_sample2 테이블에 insert를 시도합니다.
	// testLong() 메서드를 실행하면 tbl_sample1 테이블에는 데이터가 추가되지만,
	// tbl_sample2 테이블에는 길이의 제한으로 인해서 insert가 실패하게 됩니다.
	@Test
	public void testLong() {
		String str = "Starry\r\n" + "Starry night\r\n" + "Paint your palette blue and grey\r\n" + "Look out on a summer's day";
		
		log.info(str.getBytes().length);
		// 테스트에 사용한 문자열은 아래와 같이 82bytes를 나타냅니다.
		// INFO : org.zerock.service.SampleTxServiceTests - 82
		
		service.addData(str);
	}

}
