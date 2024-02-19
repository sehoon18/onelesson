package com.itwillbs.service;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.AdminBoardDAO;
import com.itwillbs.dao.AdminDAO;
import com.itwillbs.domain.AdminBoardDTO;
import com.itwillbs.domain.BoardDTO;
import com.itwillbs.domain.PageDTO;

@Service
public class AdminBoardService {
	@Inject
	private AdminBoardDAO adminBoardDAO;
	
	public void noticeInsert(AdminBoardDTO adminBoardDTO) {
		System.out.println("AdminBoardService noticeInsert()");
		
		adminBoardDTO.setNum(adminBoardDAO.getMaxNoticeNum() + 1);
		adminBoardDTO.setReadcount(0);
		adminBoardDTO.setDate(new Timestamp(System.currentTimeMillis()));
		
		adminBoardDAO.noticeInsert(adminBoardDTO);
	}

	public List<BoardDTO> getNoticeList(PageDTO pageDTO) {
		System.out.println("AdminBoardService getNoticeList()");
		
		int currentPage = pageDTO.getCurrentPage();
		int pageSize = pageDTO.getPageSize();
		int startRow = (currentPage - 1) * pageSize + 1;
		int endRow = startRow + pageSize - 1;
		
		pageDTO.setStartRow(startRow - 1);
		pageDTO.setEndRow(endRow);
		
		return adminBoardDAO.getNoticeList(pageDTO);
	}

	public int getNoticeCount() {
		System.out.println("AdminBoardService getNoticeCount()");
		
		return adminBoardDAO.getNoticeCount();
	}
	
	public AdminBoardDTO getNotice(AdminBoardDTO adminBoardDTO) {
		System.out.println("AdminBoardService getNotice()");
		
		return adminBoardDAO.getNotice(adminBoardDTO);
	}

	public void updateNoticeReadcount(AdminBoardDTO adminBoardDTO) {
		System.out.println("AdminBoardService updateNoticeReadcount()");
		
		adminBoardDAO.updateNoticeReadcount(adminBoardDTO);
	}
	
	public void noticeUpdate(AdminBoardDTO adminBoardDTO) {
		System.out.println("AdminBoardService noticeUpdate()");
		
		adminBoardDAO.noticeUpdate(adminBoardDTO);
	}
	
	public void noticeDelete(AdminBoardDTO adminBoardDTO) {
		System.out.println("AdminBoardService noticeDelete()");
		
		adminBoardDAO.noticeDelete(adminBoardDTO);
	}

	public List<BoardDTO> getFaqList(PageDTO pageDTO) {
		System.out.println("AdminBoardService getFaqList()");
		
		int currentPage = pageDTO.getCurrentPage();
		int pageSize = pageDTO.getPageSize();
		int startRow = (currentPage - 1) * pageSize + 1;
		int endRow = startRow + pageSize - 1;
		
		pageDTO.setStartRow(startRow - 1);
		pageDTO.setEndRow(endRow);
		
		return adminBoardDAO.getFaqList(pageDTO);
	}

	public int getFaqCount() {
		System.out.println("AdminBoardService getFaqCount()");
		
		return adminBoardDAO.getFaqCount();
	}

	public void faqInsert(AdminBoardDTO adminBoardDTO) {
		System.out.println("AdminBoardService faqInsert()");

		adminBoardDTO.setNum(adminBoardDAO.getMaxFaqNum() + 1);
		adminBoardDTO.setReadcount(0);
		adminBoardDTO.setDate(new Timestamp(System.currentTimeMillis()));
		
		adminBoardDAO.faqInsert(adminBoardDTO);
	}

	public AdminBoardDTO getFaq(AdminBoardDTO adminBoardDTO) {
		System.out.println("AdminBoardService getFaq()");
		
		return adminBoardDAO.getFaq(adminBoardDTO);
	}

	public void faqUpdate(AdminBoardDTO adminBoardDTO) {
		System.out.println("AdminBoardService faqUpdate()");
		
		adminBoardDAO.faqUpdate(adminBoardDTO);
	}

	public void faqDelete(AdminBoardDTO adminBoardDTO) {
		System.out.println("AdminBoardService faqDelete()");
		
		adminBoardDAO.faqDelete(adminBoardDTO);
	}
	
}
