package com.itwillbs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.itwillbs.domain.LessonDTO;
import com.itwillbs.domain.PageDTO;

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

	public List<LessonDTO> getLessonList(PageDTO pageDTO) {
		System.out.println("LessonDAO getLessonList()");
		return sqlSession.selectList(namespace + ".getLessonList", pageDTO);
	}

	public int getLessonCount() {
		return sqlSession.selectOne(namespace+".getLessonCount");
	}

}
