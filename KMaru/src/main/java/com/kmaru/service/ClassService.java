package com.kmaru.service;

import javax.inject.Inject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.kmaru.domain.BookVO;
import com.kmaru.persistence.ClassDAO;


@Service(value = "classService")
public class ClassService {
	
	

	private static final Logger logger = LoggerFactory.getLogger(ClassService.class);
	
	@Inject
	private ClassDAO cdao;
	
	// 클래스 예약
	public int classRev(BookVO bookVO) {
		logger.debug("classRev(BookVO bookVO) 호출 ");
		return cdao.classRev(bookVO);
	}
	
}
