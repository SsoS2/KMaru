package com.kmaru.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kmaru.domain.Criteria;
import com.kmaru.domain.NoticeVO;
import com.kmaru.persistence.NoticeDAO;

@Service(value = "NoticeService")
public class NoticeService {
	
	private static final Logger logger = LoggerFactory.getLogger(NoticeService.class);
	
	@Autowired
	private NoticeDAO ndao;
	
	// 전체 공지 수 조회
	public int getNoticeCount(Criteria cri) throws Exception{
		logger.debug("getNoticeCount(Criteria cri)");
		return ndao.getNoticeCount(cri);
	}
	
	// 공지 리스트 조회
	public List<NoticeVO> getNoticeList(Criteria cri) throws Exception{
		logger.debug("getNoticeList(Criteria cri)");
		return ndao.getNoticeList(cri);
	}
	
	// 본문 내용 read
	public NoticeVO noticeRead(Integer no_bno) throws Exception{
		logger.debug("noticeRead(Integer no_bno)");
		return ndao.noticeRead(no_bno);
	}
	
	// 전체 faq 수 조회
	public int getFAQCount(Criteria cri) throws Exception{
		logger.debug("getFAQCount(Criteria cri)");
		return ndao.getFAQCount(cri);
	}
	
	// faq 리스트 조회
	public List<NoticeVO> getFAQList(Criteria cri) throws Exception{
		logger.debug("getFAQList(Criteria cri)");
		return ndao.getFAQList(cri);
	}
	
	// 본문 내용 read
	public NoticeVO faqRead(Integer no_bno) throws Exception{
		logger.debug("faqRead(Integer no_bno)");
		return ndao.faqRead(no_bno);
	}

}
