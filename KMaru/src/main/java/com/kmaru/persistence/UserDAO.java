package com.kmaru.persistence;

import java.util.List;

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
	
	//회원가입
	public void userSignUp(UsVO vo) throws Exception{
		logger.debug("DAO : userSignUp(UsVO vo)");
		sqlSession.insert(NAMESPACE+".userSignUp",vo);
	}
	
	//회원가입 아이디 중복체크
	public String userIdCheck(String us_id) throws Exception{
		logger.debug("DAO : userIdCheck(String us_id)");
		return sqlSession.selectOne(NAMESPACE+".userIdCheck",us_id);
	}
	
	//로그인
	public UsVO userLogin(UsVO vo) throws Exception{
		logger.debug("DAO : userLogin(UsVO vo)");
		UsVO resultVO = sqlSession.selectOne(NAMESPACE+".userLogin", vo);
		logger.debug("DAO : resultVO : "+resultVO);
		return resultVO;
	}
	
	// 아이디 찾기
	public String userFindIdCompare(UsVO vo) throws Exception{
		logger.debug("DAO : userFindIdCompare()");
		return sqlSession.selectOne(NAMESPACE+".userFindIdCompare", vo);
	}
	
	// 비밀번호 찾기
	public String userFindPw(UsVO vo) throws Exception{
		logger.debug("DAO : userFindPw()");
		return sqlSession.selectOne(NAMESPACE+".userFindPw", vo);
	}
	
	// 회원정보
	public UsVO userInfo(String us_id) throws Exception{
		logger.debug("DAO : userInfo()");
		return sqlSession.selectOne(NAMESPACE+".userInfo", us_id);
	}
	
	// 회원정보 업데이트 비밀번호체크
	public String userInfoUpdatePwCheck(String us_id) throws Exception{
		logger.debug("DAO : userInfoUpdatePwCheck()");
		return sqlSession.selectOne(NAMESPACE+".userInfoUpdatePwCheck", us_id);
	}
	
	// 회원정보 업데이트
	public void userInfoUpdate(UsVO vo) throws Exception{
		logger.debug("DAO : userInfoUpdate()");
		sqlSession.update(NAMESPACE+".userInfoUpdate", vo);
	}

}
