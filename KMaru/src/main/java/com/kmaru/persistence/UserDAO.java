package com.kmaru.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.kmaru.domain.UsVO;

@Repository(value = "UserDAO")
public class UserDAO {
	
	
	private static final Logger logger = LoggerFactory.getLogger(UserDAO.class);
	
	@Inject
	private SqlSessionFactory sqlFactory;
	
	@Inject
	private SqlSession sqlSession;
	
	private static final String NAMESPACE = "com.kmaru.mapper.UserMapper";
	
	public void userSignUp(UsVO vo) throws Exception{
		logger.debug("DAO : userSignUp(UsVO vo)");
		sqlSession.insert(NAMESPACE+".userSignUp",vo);
	}
	
	public UsVO userLogin(UsVO vo) throws Exception{
		logger.debug("DAO : userLogin(UsVO vo)");
		
		UsVO resultVO = sqlSession.selectOne(NAMESPACE+".userLogin", vo);
		logger.debug("DAO : resultVO : "+resultVO);
		
		return resultVO;
	}

}
