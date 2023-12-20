package com.kmaru.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class UsVO {
	
	private String us_id;
	private String us_pw;
	private String us_name;
	private String us_img;
	private String us_tel;
	private String us_email;
	private Date us_regdate;
	private Date us_outdate;
	private String us_state;
}
