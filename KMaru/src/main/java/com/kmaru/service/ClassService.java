package com.kmaru.service;

import javax.inject.Inject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import com.kmaru.persistence.ClassDAO;


@Service(value = "classService")
public class ClassService {
	
	

	private static final Logger logger = LoggerFactory.getLogger(ClassService.class);
	
	@Inject
	private ClassDAO cdao;
	
	// 조회수 증가
//	public int viewCnt(Integer it_no) {
//		logger.debug("viewCnt(Integer it_no) 호출 ");
//		return idao.viewCnt(it_no);
//	}
	
}
