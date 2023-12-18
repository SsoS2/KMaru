package com.kmaru.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.kmaru.domain.UsVo;

@Repository(value = "UserDAO")
public class UserDAO {
	
	
	private static final Logger logger = LoggerFactory.getLogger(UserDAO.class);
	
	@Inject
	private SqlSessionFactory sqlFactory;
	
	@Inject
	private SqlSession sqlSession;
	
	private static final String NAMESPACE = "com.kmaru.mapper.UserMapper";
	
	public void userSignUp(UsVo vo) throws Exception{
		logger.debug("DAO : userSignUp(UsVo vo)");
		sqlSession.insert(NAMESPACE+".userSignUp",vo);
	}

}
