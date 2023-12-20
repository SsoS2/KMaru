package com.kmaru.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class BookingVO {
	
	private int b_no;
	private String us_id;
	private Date b_date;
	private String b_class;
	private String b_time;
	private int b_per;
	private int b_price;
	private String b_state;
}
