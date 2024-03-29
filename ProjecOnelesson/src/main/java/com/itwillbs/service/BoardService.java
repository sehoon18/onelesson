package com.itwillbs.service;

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

	public int getNoticeCount(PageDTO pageDTO) {
		System.out.println("BoardService getNoticeCount()");
		
		return boardDAO.getNoticeCount(pageDTO);
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

	public int getFaqCount(PageDTO pageDTO) {
		System.out.println("BoardService getFaqCount()");
		
		return boardDAO.getFaqCount(pageDTO);
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

	public void insertQna(BoardDTO boardDTO) {
		boardDAO.insertQna(boardDTO);
	}

	public void updateQna(BoardDTO boardDTO) {
		boardDAO.updateQna(boardDTO);
	}

	public BoardDTO getQ(BoardDTO boardDTO) {
		return boardDAO.getQ(boardDTO);
	}

	public List<BoardDTO> getQnaList(PageDTO pageDTO) {
		System.out.println("BoardService getQnaList()");
		
		int currentPage = pageDTO.getCurrentPage();
		int pageSize = pageDTO.getPageSize();
		int startRow = (currentPage - 1) * pageSize + 1;
		int endRow = startRow + pageSize - 1;
		
		pageDTO.setStartRow(startRow - 1);
		pageDTO.setEndRow(endRow);
		
		return boardDAO.getQnaList(pageDTO);
	}

	public int getQnaCount(PageDTO pageDTO) {
		return boardDAO.getQnaCount(pageDTO);
	}

	public BoardDTO getQna(BoardDTO boardDTO) {
		return boardDAO.getQna(boardDTO);
	}

	public void insertLqna(BoardDTO boardDTO) {
		boardDAO.insertLqna(boardDTO);
	}

	public List<BoardDTO> getLqnaList(PageDTO pageDTO) {
		System.out.println("BoardService getLqnaList()");
		
		int currentPage = pageDTO.getCurrentPage();
		int pageSize = pageDTO.getPageSize();
		int startRow = (currentPage - 1) * pageSize + 1;
		int endRow = startRow + pageSize - 1;
		
		pageDTO.setStartRow(startRow - 1);
		pageDTO.setEndRow(endRow);
		
		return boardDAO.getLqnaList(pageDTO);
	}

	public int getLqnaCount(PageDTO pageDTO) {
		return boardDAO.getLqnaCount(pageDTO);
	}

	public BoardDTO getLqna(BoardDTO boardDTO) {
		return boardDAO.getLqna(boardDTO);
	}

	public void updateLqna(BoardDTO boardDTO) {
		boardDAO.updateLqna(boardDTO);
	}

	public void insertReview(BoardDTO boardDTO) {
		boardDAO.insertReview(boardDTO);
	}

	public List<BoardDTO> getMyReviewList(PageDTO pageDTO) {
		System.out.println("BoardService getMyReviewList()");
		
		int currentPage = pageDTO.getCurrentPage();
		int pageSize = pageDTO.getPageSize();
		int startRow = (currentPage - 1) * pageSize + 1;
		int endRow = startRow + pageSize - 1;
		
		pageDTO.setStartRow(startRow - 1);
		pageDTO.setEndRow(endRow);
		
		return boardDAO.getMyReviewList(pageDTO);
	}

	public int getMyReviewCount(PageDTO pageDTO) {
		return boardDAO.getMyReviewCount(pageDTO);
	}

	public List<BoardDAO> getWishList(PageDTO pageDTO) {
		System.out.println("BoardService getWishList()");
		
		int currentPage = pageDTO.getCurrentPage();
		int pageSize = pageDTO.getPageSize();
		int startRow = (currentPage - 1) * pageSize + 1;
		int endRow = startRow + pageSize - 1;
		
		pageDTO.setStartRow(startRow - 1);
		pageDTO.setEndRow(endRow);
		
		return boardDAO.getWishList(pageDTO);
	}

	public int getWishCount(PageDTO pageDTO) {
		return boardDAO.getWishCount(pageDTO);
	}

	public List<BoardDTO> getMyreceiveReviewList(PageDTO pageDTO) {
		int currentPage = pageDTO.getCurrentPage();
		int pageSize = pageDTO.getPageSize();
		int startRow = (currentPage - 1) * pageSize + 1;
		int endRow = startRow + pageSize - 1;
		
		pageDTO.setStartRow(startRow - 1);
		pageDTO.setEndRow(endRow);
		return boardDAO.getMyreceiveReviewList(pageDTO);
	}

	public int getMyreceiveReviewCount(PageDTO pageDTO) {
		return boardDAO.getMyreceiveReviewCount(pageDTO);
	}

	public List<BoardDTO> getreceiveLqnaList(PageDTO pageDTO) {
		int currentPage = pageDTO.getCurrentPage();
		int pageSize = pageDTO.getPageSize();
		int startRow = (currentPage - 1) * pageSize + 1;
		int endRow = startRow + pageSize - 1;
		
		pageDTO.setStartRow(startRow - 1);
		pageDTO.setEndRow(endRow);
		return boardDAO.getreceiveLqnaList(pageDTO);
	}

	public int getreceiveLqnaCount(PageDTO pageDTO) {
		return boardDAO.getreceiveLqnaCount(pageDTO);
	}

	public List<BoardDTO> getLessonReview(PageDTO pageDTO) {
		int currentPage = pageDTO.getCurrentPage();
		int pageSize = pageDTO.getPageSize();
		int startRow = (currentPage - 1) * pageSize + 1;
		int endRow = startRow + pageSize - 1;
		
		pageDTO.setStartRow(startRow - 1);
		pageDTO.setEndRow(endRow);
		return boardDAO.getLessonReview(pageDTO);
	}

	public int getLessonReviewCount(LessonDTO lessonDTO) {
		return boardDAO.getLessonReviewCount(lessonDTO);
	}

	public BoardDTO ReviewCheck(BoardDTO boardDTO) {
		return boardDAO.ReviewCheck(boardDTO);
	}

	public List<Integer> getwishList(String id) {
		return boardDAO.getwishList(id);
	}

	public void deleteWish(BoardDTO boardDTO) {
		boardDAO.deleteWish(boardDTO);
	}

}
