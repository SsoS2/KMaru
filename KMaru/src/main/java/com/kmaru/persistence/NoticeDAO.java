package com.kmaru.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kmaru.domain.Criteria;
import com.kmaru.domain.NoticeVO;


@Repository(value = "NoticeDAO")
public class NoticeDAO {
	

	private static final Logger logger = LoggerFactory.getLogger(NoticeDAO.class);
	
	@Autowired
	private SqlSessionFactory sqlFactory;
	
	@Autowired
	private SqlSession sqlSession;
	
	private static final String NAMESPACE = "com.kmaru.mapper.NoticeMapper";
	
	public int getNoticeCount(Criteria cri) throws Exception{
		logger.debug("getNoticeCount(Criteria cri)");
		return sqlSession.selectOne(NAMESPACE+".getNoticeCount", cri);
	}
	
	public List<NoticeVO> getNoticeList(Criteria cri) throws Exception{
		logger.debug("getNoticeList(Criteria cri)");
		return sqlSession.selectList(NAMESPACE+".getNoticeList", cri);
	}
	
	public NoticeVO noticeRead(Integer no_bno) throws Exception{
		logger.debug("noticeRead(Integer no_bno)");
		return sqlSession.selectOne(NAMESPACE+".noticeRead", no_bno);
	}
	
	public int getFAQCount(Criteria cri) throws Exception{
		logger.debug("getFAQCount(Criteria cri)");
		return sqlSession.selectOne(NAMESPACE+".getFAQCount", cri);
	}
	
	public List<NoticeVO> getFAQList(Criteria cri) throws Exception{
		logger.debug("getFAQList(Criteria cri)");
		return sqlSession.selectList(NAMESPACE+".getFAQList", cri);
	}
	
	public NoticeVO faqRead(Integer no_bno) throws Exception{
		logger.debug("faqRead(Integer no_bno)");
		return sqlSession.selectOne(NAMESPACE+".faqRead", no_bno);
	}
}
