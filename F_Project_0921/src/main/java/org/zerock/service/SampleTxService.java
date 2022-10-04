package org.zerock.service;

// 트랜잭션은 비즈니스 계층에서 이루어지므로, org.zerock.service 계층에서
// Sample1Mapper, Sample2Mapper를 사용하는 SampleTxService 인터페이스,
// SampleTxServiceImpl 클래스를 설계합니다.
public interface SampleTxService {

	// Page472 : 트랜잭션의 설정이 안되어 있는 상태를 먼저 테스트하기 위해서
	//           기존 방식처럼 addData() 추상 메서드 코드를 작성합니다.
	public void addData(String value);
	
}
