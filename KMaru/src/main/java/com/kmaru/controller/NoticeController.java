package com.kmaru.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kmaru.domain.Criteria;
import com.kmaru.domain.NoticeVO;
import com.kmaru.domain.PageVO;
import com.kmaru.service.NoticeService;


@Controller
@RequestMapping(value = "/notice/*")
public class NoticeController { 
	
	private static final Logger logger = LoggerFactory.getLogger(NoticeController.class);
	
	@Autowired
	private NoticeService nService;
	
	// http://localhost:8088/notice/noticeList?page=1
	// 공지리스트
	@RequestMapping(value="/noticeList")
	public void viewNotice(Criteria cri, Model model) throws Exception{
		logger.debug("noticeList()");
		
		// 페이징처리(페이지 블럭 처리 객체)
		PageVO pageVO = new PageVO();
		pageVO.setCri(cri);
		// 전체 공지 수 조회
		pageVO.setTotalCount(nService.getNoticeCount(cri));

		model.addAttribute("pageVO", pageVO);

		// 페이지이동시 받아온 페이지 번호
		if (cri.getPage() > pageVO.getEndPage()) {
			// 잘못된 페이지 정보를 입력받음. 글이없음.
			cri.setPage(pageVO.getEndPage());
		}

		List<NoticeVO> noticeList = nService.getNoticeList(cri);
		// 리스트사이즈확인
		logger.debug(" 글개수 : " + noticeList.size());
		
		// db 정보 -> model객체에 담아 view전달
		model.addAttribute("noticeList", noticeList);
		
	}
	
	// faq리스트
	// http://localhost:8088/notice/faqList?page=1
	@RequestMapping(value="/faqList")
	public void viewFAQ(Criteria cri,Model model) throws Exception{
		// 페이징처리(페이지 블럭 처리 객체)
		PageVO pageVO = new PageVO();
		pageVO.setCri(cri);
		// 전체 공지 수 조회
		pageVO.setTotalCount(nService.getFAQCount(cri));

		model.addAttribute("pageVO", pageVO);

		// 페이지이동시 받아온 페이지 번호
		if (cri.getPage() > pageVO.getEndPage()) {
			// 잘못된 페이지 정보를 입력받음. 글이없음.
			cri.setPage(pageVO.getEndPage());
		}

		List<NoticeVO> faqList = nService.getFAQList(cri);
		// 리스트사이즈확인
		logger.debug(" 글개수 : " + faqList.size());
		
		// db 정보 -> model객체에 담아 view전달
		model.addAttribute("faqList", faqList);
	}
	
	
	

}
