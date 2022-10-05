package org.zerock.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zerock.mapper.Sample1Mapper;
import org.zerock.mapper.Sample2Mapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;


@Service
@Log4j
public class SampleTxServiceImpl implements SampleTxService {

	@Setter(onMethod_ = {@Autowired})
	private Sample1Mapper mapper1;
	
	@Setter(onMethod_ = {@Autowired})
	private Sample2Mapper mapper2;

	// SampleTxService는 addData() 메서드를 활용해서 데이터를 추가합니다.
	// SampleTxServiceImpl 클래스는 Sample1Mapper와 Sample2Mapper 모두를
	// 이용해서 같은 데이터를 tbl_sample1과 tbl_sample2 테이블에 insert 하도록 합니다.	
	@Transactional // Page476 @Transactional 설정을 추가해 줍니다.
	@Override
	public void addData(String value) {
		log.info("mapper1이 처리됩니다!.....");
		mapper1.insertCol1(value);
		log.info("mapper2가 처리됩니다!.....");
		mapper2.insertCol2(value);
		
		log.info("end 처리가 끝났습니다!.....");
	}
	
}
