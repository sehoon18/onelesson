package com.itwillbs.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.AdminQnaDAO;
import com.itwillbs.domain.AdminQnaDTO;
import com.itwillbs.domain.PageDTO;

@Service
public class AdminQnaService {
	@Inject
	private AdminQnaDAO adminQnaDAO;

	public List<AdminQnaDTO> getQnaList(PageDTO pageDTO) {
		System.out.println("AdminQnaService getQnaList()");

		int currentPage = pageDTO.getCurrentPage();
		int pageSize = pageDTO.getPageSize();
		int startRow = (currentPage - 1) * pageSize + 1;
		int endRow = startRow + pageSize - 1;
		
		pageDTO.setStartRow(startRow - 1);
		pageDTO.setEndRow(endRow);
		
		return adminQnaDAO.getQnaList(pageDTO);
	}

	public int getQnaCount() {
		System.out.println("AdminQnaService getQnaCount()");
		
		return adminQnaDAO.getQnaCount();
	}

	public AdminQnaDTO getQna(AdminQnaDTO adminQnaDTO) {
		System.out.println("AdminQnaService getQna()");
		
		return adminQnaDAO.getQna(adminQnaDTO);
	}

	public void qnaAnswer(AdminQnaDTO adminQnaDTO) {
		System.out.println("AdminQnaService qnaAnswer()");
		
		adminQnaDAO.qnaAnswer(adminQnaDTO);
	}

	public void updateQna(AdminQnaDTO adminQnaDTO) {
		System.out.println("AdminQnaService updateQna()");
		
		adminQnaDAO.updateQna(adminQnaDTO);
	}
}
