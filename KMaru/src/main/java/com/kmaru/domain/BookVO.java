package com.kmaru.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class BookVO {
	
	private int b_no; //예약 번호(PK)
	private String us_id; // 회원 아이디
	private Date b_date; // 예약 날짜
	private String b_class; // 클래스 종류
	private String b_time; // 예약 시간대
	private int b_per; // 신청 인원
	private int b_price; // 가격
	private String b_state; // 예약상태
	private String b_ment; // 요청사항
	
	private String imp_uid; // 결제고유번호
	private String pay_uid; // 주문번호(merchant_uid)
	private Date pay_date; // 결제일시(current_date)
	private String pay_con; // 결제상태(결제완료/오류/취소)
	private String pay_pg; // pg사(결제회사)
	private String pay_method; // 결제수단
	private String pay_card; // 카드사
	private String card_num; // 카드승인번호
}
