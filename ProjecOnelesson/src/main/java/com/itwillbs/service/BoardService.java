package com.itwillbs.service;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.BoardDAO;
import com.itwillbs.domain.BoardDTO;
import com.itwillbs.domain.LessonDTO;
import com.itwillbs.domain.PageDTO;

@Service
public class BoardService {
	@Inject
	private BoardDAO boardDAO;

	public List<BoardDTO> getNoticeList(PageDTO pageDTO) {
		System.out.println("BoardService getNoticeList()");
		
		int currentPage = pageDTO.getCurrentPage();
		int pageSize = pageDTO.getPageSize();
		int startRow = (currentPage - 1) * pageSize + 1;
		int endRow = startRow + pageSize - 1;
		
		pageDTO.setStartRow(startRow - 1);
		pageDTO.setEndRow(endRow);
		
		return boardDAO.getNoticeList(pageDTO);
	}

	public int getNoticeCount() {
		System.out.println("BoardService getNoticeCount()");
		
		return boardDAO.getNoticeCount();
	}
	
	public BoardDTO getNotice(BoardDTO boardDTO) {
		System.out.println("BoardService getNotice()");
		
		return boardDAO.getNotice(boardDTO);
	}

	public void updateNoticeReadcount(BoardDTO boardDTO) {
		System.out.println("BoardService updateNoticeReadcount()");
		
		boardDAO.updateNoticeReadcount(boardDTO);
	}

	public List<BoardDTO> getFaqList(PageDTO pageDTO) {
		System.out.println("BoardService getFaqList()");
		
		int currentPage = pageDTO.getCurrentPage();
		int pageSize = pageDTO.getPageSize();
		int startRow = (currentPage - 1) * pageSize + 1;
		int endRow = startRow + pageSize - 1;
		
		pageDTO.setStartRow(startRow - 1);
		pageDTO.setEndRow(endRow);
		
		return boardDAO.getFaqList(pageDTO);
	}

	public int getFaqCount() {
		System.out.println("BoardService getFaqCount()");
		
		return boardDAO.getFaqCount();
	}

	public BoardDTO getFaq(BoardDTO boardDTO) {
		System.out.println("BoardService getFaq()");
		
		return boardDAO.getFaq(boardDTO);
	}

	public void addWish(LessonDTO lessonDTO) {
		boardDAO.addWish(lessonDTO);
	}

	public void removeWish(LessonDTO lessonDTO) {
		boardDAO.removeWish(lessonDTO);
	}

	public void insertBoard(BoardDTO boardDTO) {
		boardDAO.insertBoard(boardDTO);
	}


}
