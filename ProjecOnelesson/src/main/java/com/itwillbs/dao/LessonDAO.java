package com.itwillbs.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.itwillbs.domain.LessonDTO;

@Repository
public class LessonDAO {
	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "com.itwillbs.mappers.lessonMapper"; 
	
	public void insertLesson(LessonDTO lessonDTO) {
		System.out.println("LessonDAO insertLesson()");
		System.out.println(lessonDTO);

		sqlSession.insert(namespace + ".insertLesson", lessonDTO);
		System.out.println(lessonDTO);

	}

}
