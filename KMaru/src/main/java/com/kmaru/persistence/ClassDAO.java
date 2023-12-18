package com.kmaru.persistence;

import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;


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

	
	

}
