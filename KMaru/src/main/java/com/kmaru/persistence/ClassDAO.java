package com.kmaru.persistence;

import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.kmaru.domain.BookVO;
import com.kmaru.domain.UsVO;


@Repository(value = "classDAO")
public class ClassDAO{

	private static final Logger logger = LoggerFactory.getLogger(ClassDAO.class);
	
	// 디비연결객체 정보를 주입
	@Inject
	private SqlSessionFactory sqlFactory;
	
	@Inject
	private SqlSession sqlSession;
	// => 디비연결정보 있음(연결, 해제 자동)
	
	private static final String NAMESPACE
	= "com.kmaru.mapper.ClassMapper";

	// 클래스 예약
	public int classRev (BookVO bookVO) {
		logger.debug("DAO : classRev(BookVO bookVO) 호출");
		return sqlSession.insert(NAMESPACE + ".classRev", bookVO);
	}
	
	// 회원 정보 조회
	public UsVO info(String us_id) {
		logger.debug("DAO : info(String us_id) 호출");
		return sqlSession.selectOne(NAMESPACE + ".info", us_id);
	}
	

}
