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

	public int getLessonCount(PageDTO pageDTO) {
		return lessonDAO.getLessonCount(pageDTO);
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
		return lessonDAO.getLessonListAll(pageDTO);
	}

	public List<LessonDTO> searchLessons(LessonDTO lessonDTO) {
		System.out.println("LessonService searchLessons()");
		
		return lessonDAO.searchLessons(lessonDTO);
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

	public String infoCheck(LessonDTO lessonDTO) {
		return lessonDAO.infoCheck(lessonDTO);
	}

	public LessonDTO getLesNum(String id) {
		System.out.println("LessonService getLesNum");
		return lessonDAO.getLesNum(id);
	}

}
