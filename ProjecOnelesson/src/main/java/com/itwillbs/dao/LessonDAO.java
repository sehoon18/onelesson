package com.itwillbs.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.LessonDTO;

@Repository
public class LessonDAO {
	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "com.itwillbs.mappers.lessonMapper"; 

	public void insertLesson(LessonDTO lessonDTO) {
		System.out.println("LessonDAO insertLesson()");
		sqlSession.insert(namespace + ".insertLesson", lessonDTO);
	}

}
