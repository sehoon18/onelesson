package com.itwillbs.service;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.AdminNoticeDAO;
import com.itwillbs.dao.AdminDAO;
import com.itwillbs.dao.AdminFaqDAO;
import com.itwillbs.domain.AdminFaqDTO;
import com.itwillbs.domain.AdminNoticeDTO;
import com.itwillbs.domain.BoardDTO;
import com.itwillbs.domain.PageDTO;

@Service
public class AdminFaqService {
	@Inject
	private AdminFaqDAO adminFaqDAO;
	
	public void faqInsert(AdminFaqDTO adminFaqDTO) {
		System.out.println("AdminFaqService faqInsert()");

		adminFaqDTO.setNum(adminFaqDAO.getMaxFaqNum() + 1);
		
		adminFaqDAO.faqInsert(adminFaqDTO);
	}
	
	public List<AdminFaqDTO> getFaqList(PageDTO pageDTO) {
		System.out.println("AdminFaqService getFaqList()");
		
		int currentPage = pageDTO.getCurrentPage();
		int pageSize = pageDTO.getPageSize();
		int startRow = (currentPage - 1) * pageSize + 1;
		int endRow = startRow + pageSize - 1;
		
		pageDTO.setStartRow(startRow - 1);
		pageDTO.setEndRow(endRow);
		
		return adminFaqDAO.getFaqList(pageDTO);
	}

	public int getFaqCount() {
		System.out.println("AdminFaqService getFaqCount()");
		
		return adminFaqDAO.getFaqCount();
	}

	public AdminFaqDTO getFaq(AdminFaqDTO adminFaqDTO) {
		System.out.println("AdminFaqService getFaq()");
		
		return adminFaqDAO.getFaq(adminFaqDTO);
	}

	public void faqUpdate(AdminFaqDTO adminFaqDTO) {
		System.out.println("AdminFaqService faqUpdate()");
		
		adminFaqDAO.faqUpdate(adminFaqDTO);
	}

	public void faqDelete(AdminFaqDTO adminFaqDTO) {
		System.out.println("AdminFaqService faqDelete()");
		
		adminFaqDAO.faqDelete(adminFaqDTO);
	}
	
}
