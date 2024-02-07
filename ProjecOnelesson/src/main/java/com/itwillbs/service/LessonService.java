package com.itwillbs.service;

import java.sql.Timestamp;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.LessonDAO;
import com.itwillbs.domain.LessonDTO;

@Service
public class LessonService {
	@Inject
	private LessonDAO lessonDAO;

	public void insertLesson(LessonDTO lessonDTO) {
		System.out.println("LessonService insertLesson()");
		lessonDTO.setUpdate(new Timestamp(System.currentTimeMillis()));
		lessonDAO.insertLesson(lessonDTO);
	}

}
