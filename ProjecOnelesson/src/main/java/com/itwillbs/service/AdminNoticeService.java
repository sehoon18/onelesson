package com.itwillbs.service;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.AdminNoticeDAO;
import com.itwillbs.domain.AdminNoticeDTO;
import com.itwillbs.domain.PageDTO;

@Service
public class AdminNoticeService {
	@Inject
	private AdminNoticeDAO adminNoticeDAO;
	
	public void noticeInsert(AdminNoticeDTO adminNoticeDTO) {
		System.out.println("AdminNoticeService noticeInsert()");
		
		adminNoticeDTO.setReadcount(0);
		adminNoticeDTO.setDate(new Timestamp(System.currentTimeMillis()));
		
		adminNoticeDAO.noticeInsert(adminNoticeDTO);
	}

	public List<AdminNoticeDTO> getNoticeList(PageDTO pageDTO) {
		System.out.println("AdminNoticeService getNoticeList()");
		
		int currentPage = pageDTO.getCurrentPage();
		int pageSize = pageDTO.getPageSize();
		int startRow = (currentPage - 1) * pageSize + 1;
		int endRow = startRow + pageSize - 1;
		
		pageDTO.setStartRow(startRow - 1);
		pageDTO.setEndRow(endRow);
		
		return adminNoticeDAO.getNoticeList(pageDTO);
	}

	public int getNoticeCount() {
		System.out.println("AdminNoticeService getNoticeCount()");
		
		return adminNoticeDAO.getNoticeCount();
	}
	
	public AdminNoticeDTO getNotice(AdminNoticeDTO adminNoticeDTO) {
		System.out.println("AdminNoticeService getNotice()");
		
		return adminNoticeDAO.getNotice(adminNoticeDTO);
	}
	
	public void noticeUpdate(AdminNoticeDTO adminNoticeDTO) {
		System.out.println("AdminNoticeService noticeUpdate()");
		
		adminNoticeDAO.noticeUpdate(adminNoticeDTO);
	}
	
	public void noticeDelete(AdminNoticeDTO adminNoticeDTO) {
		System.out.println("AdminNoticeService noticeDelete()");
		
		adminNoticeDAO.noticeDelete(adminNoticeDTO);
	}
	
}
