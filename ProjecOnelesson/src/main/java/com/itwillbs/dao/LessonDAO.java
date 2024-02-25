package com.itwillbs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.itwillbs.domain.BoardDTO;
import com.itwillbs.domain.LessonDTO;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.OrderDTO;
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

	public int getLessonCount() {
		return sqlSession.selectOne(namespace+".getLessonCount");
	}

	public List<LessonDTO> getlessonSearch(PageDTO pageDTO) {
		return sqlSession.selectList(namespace + ".getlessonSearch", pageDTO);
	}

	public List<LessonDTO> getcategorySearch(PageDTO pageDTO) {
		return sqlSession.selectList(namespace + ".getcategorySearch", pageDTO);
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

	public List<LessonDTO> getWishList(PageDTO pageDTO) {
		return sqlSession.selectList(namespace + ".getWishList", pageDTO);
	}

	public int getWishCount(PageDTO pageDTO) {
		return sqlSession.selectOne(namespace+".getWishCount", pageDTO);
	}

}
