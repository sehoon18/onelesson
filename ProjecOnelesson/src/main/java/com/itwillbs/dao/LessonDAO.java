package com.itwillbs.dao;

import java.sql.Date;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.itwillbs.domain.BoardDTO;
import com.itwillbs.domain.LessonDTO;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.PageDTO;

@Repository
public class LessonDAO {
	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "com.itwillbs.mappers.lessonMapper"; 
	
	public void insertLesson(LessonDTO lessonDTO) {
		System.out.println("LessonDAO insertLesson()");
		sqlSession.insert(namespace + ".insertLesson", lessonDTO);
	}
	
	public List<LessonDTO> getLessonList(PageDTO pageDTO) {
		System.out.println("LessonDAO getLessonList()");
		return sqlSession.selectList(namespace + ".getLessonList", pageDTO);
	}

	public int getLessonCount(PageDTO pageDTO) {
		return sqlSession.selectOne(namespace+".getLessonCount", pageDTO);
	}

	public LessonDTO getLesson(LessonDTO lessonDTO) {
		return sqlSession.selectOne(namespace + ".getLesson", lessonDTO);
	}

	public void insertOrders(LessonDTO lessonDTO) {
		sqlSession.insert(namespace + ".insertOrders", lessonDTO);
	}

	public List<LessonDTO> getMyLessonList(PageDTO pageDTO) {
		return sqlSession.selectList(namespace + ".getMyLessonList", pageDTO);
	}

	public int getMyLessonCount(PageDTO pageDTO) {
		return sqlSession.selectOne(namespace+".getMyLessonCount", pageDTO);
	}

	public List<LessonDTO> getSubject(BoardDTO boardDTO) {
		return sqlSession.selectList(namespace + ".getSubject", boardDTO);
	}

	public List<LessonDTO> getLessonListAll(PageDTO pageDTO) {
		return sqlSession.selectList(namespace + ".getLessonListAll", pageDTO);
	}

	public List<LessonDTO> getMyinsertLessonList(PageDTO pageDTO) {
		return sqlSession.selectList(namespace + ".getMyinsertLessonList", pageDTO);
	}

	public int getMyinsertLessonCount(PageDTO pageDTO) {
		return sqlSession.selectOne(namespace + ".getMyinsertLessonCount", pageDTO);
	}

	public void updateStatus0(LessonDTO lessonDTO) {
		sqlSession.update(namespace + ".updateStatus0", lessonDTO);
	}

	public void updateStatus1(LessonDTO lessonDTO) {
		sqlSession.update(namespace + ".updateStatus1", lessonDTO);
		
	}

	public void updateLesson(LessonDTO lessonDTO) {
		sqlSession.update(namespace + ".updateLesson", lessonDTO);
	}

	public String infoCheck(LessonDTO lessonDTO) {
		return sqlSession.selectOne(namespace + ".infoCheck", lessonDTO);
	}

}
