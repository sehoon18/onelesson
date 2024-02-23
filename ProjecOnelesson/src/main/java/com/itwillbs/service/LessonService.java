package com.itwillbs.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.LessonDAO;
import com.itwillbs.domain.BoardDTO;
import com.itwillbs.domain.LessonDTO;
import com.itwillbs.domain.PageDTO;

@Service
public class LessonService {
	@Inject
	private LessonDAO lessonDAO;

	public void insertLesson(LessonDTO lessonDTO) {
		System.out.println("LessonService insertLesson()");
		lessonDAO.insertLesson(lessonDTO);
		System.out.println(lessonDTO);
	}
	
	public List<LessonDTO> getLessonList(PageDTO pageDTO) {
		System.out.println("LessonService getLessonList()");
		
		int startRow = (pageDTO.getCurrentPage() - 1) * pageDTO.getPageSize() + 1;
		int EndRow = startRow + pageDTO.getPageSize() - 1;
		
		pageDTO.setStartRow(startRow -1);
		pageDTO.setEndRow(EndRow);
		
		return lessonDAO.getLessonList(pageDTO);
	}

	public int getLessonCount() {
		return lessonDAO.getLessonCount();
	}

	public List<LessonDTO> getlessonSearch(PageDTO pageDTO) {
		System.out.println("LessonService getlessonSearch()");
		
		int startRow = (pageDTO.getCurrentPage() - 1) * pageDTO.getPageSize() + 1;
		int EndRow = startRow + pageDTO.getPageSize() - 1;
		
		pageDTO.setStartRow(startRow -1);
		pageDTO.setEndRow(EndRow);
		
		return lessonDAO.getlessonSearch(pageDTO);
	}

	public List<LessonDTO> getcategorySearch(PageDTO pageDTO) {
		System.out.println("LessonService getcategorySearch()");
		
		int startRow = (pageDTO.getCurrentPage() - 1) * pageDTO.getPageSize() + 1;
		int EndRow = startRow + pageDTO.getPageSize() - 1;
		
		pageDTO.setStartRow(startRow -1);
		pageDTO.setEndRow(EndRow);
		
		return lessonDAO.getcategorySearch(pageDTO);
	}

	public LessonDTO getLesson(LessonDTO lessonDTO) {
		return lessonDAO.getLesson(lessonDTO);
	}

	public void insertOrders(LessonDTO lessonDTO) {
		lessonDAO.insertOrders(lessonDTO);
	}

	public List<LessonDTO> getMyLessonList(PageDTO pageDTO) {
		System.out.println("LessonService getMyLessonList()");
		
		int startRow = (pageDTO.getCurrentPage() - 1) * pageDTO.getPageSize() + 1;
		int EndRow = startRow + pageDTO.getPageSize() - 1;
		
		pageDTO.setStartRow(startRow -1);
		pageDTO.setEndRow(EndRow);
		
		return lessonDAO.getMyLessonList(pageDTO);
	}

	public int getMyLessonCount(PageDTO pageDTO) {
		return lessonDAO.getMyLessonCount(pageDTO);
	}

	public List<LessonDTO> getSubject(BoardDTO boardDTO) {
		return lessonDAO.getSubject(boardDTO);
	}

	public List<LessonDTO> getLessonListAll(PageDTO pageDTO) {
		System.out.println("LessonService getLessonListAll()");
		
		int startRow = (pageDTO.getCurrentPage() - 1) * pageDTO.getPageSize() + 1;
		int EndRow = startRow + pageDTO.getPageSize() - 1;
		
		pageDTO.setStartRow(startRow -1);
		pageDTO.setEndRow(EndRow);
		
		return lessonDAO.getLessonListAll(pageDTO);
	}

	public int getLSearchCount(PageDTO pageDTO) {
		return lessonDAO.getLSearchCount(pageDTO);
	}

	public List<LessonDTO> getMyinsertLessonList(PageDTO pageDTO) {
		System.out.println("LessonService getMyinsertLessonList()");
		
		int startRow = (pageDTO.getCurrentPage() - 1) * pageDTO.getPageSize() + 1;
		int EndRow = startRow + pageDTO.getPageSize() - 1;
		
		pageDTO.setStartRow(startRow -1);
		pageDTO.setEndRow(EndRow);
		
		return lessonDAO.getMyinsertLessonList(pageDTO);
		}

	public int getMyinsertLessonCount(PageDTO pageDTO) {
		return lessonDAO.getMyinsertLessonCount(pageDTO);
	}

	public void updateStatus0(LessonDTO lessonDTO) {
		lessonDAO.updateStatus0(lessonDTO);
	}

	public void updateStatus1(LessonDTO lessonDTO) {
		lessonDAO.updateStatus1(lessonDTO);
	}

	public void updateLesson(LessonDTO lessonDTO) {
		lessonDAO.updateLesson(lessonDTO);
	}

}
