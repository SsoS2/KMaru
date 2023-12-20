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
	
	public int getNoticeCount(Criteria cri) throws Exception{
		// 전체 공지 수 조회
		logger.debug("getNoticeCount(Criteria cri)");
		return ndao.getNoticeCount(cri);
	}
	
	public List<NoticeVO> getNoticeList(Criteria cri) throws Exception{
		return ndao.getNoticeList(cri);
	}
	
	public NoticeVO viewNotice() throws Exception {
		logger.debug("viewNotice()");
		return ndao.viewNotice();
	}
}
