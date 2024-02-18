package com.itwillbs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.AdminBoardDTO;
import com.itwillbs.domain.BoardDTO;
import com.itwillbs.domain.PageDTO;

@Repository
public class AdminBoardDAO {
	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "com.itwillbs.mappers.adminBoardMapper";
	
	public void noticeInsert(AdminBoardDTO adminBoardDTO) {
		System.out.println("AdminBoardDAO noticeInsert()");
		System.out.println(adminBoardDTO);
		
		sqlSession.insert(namespace + ".noticeInsert", adminBoardDTO);
	}

	public int getMaxNoticeNum() {
		System.out.println("AdminBoardDAO getMaxNoticeNum()");
		
		return sqlSession.selectOne(namespace + ".getMaxNoticeNum");
	}

	public List<BoardDTO> getNoticeList(PageDTO pageDTO) {
		System.out.println("AdminBoardDAO getNoticeList()");
		System.out.println(pageDTO);
		
		return sqlSession.selectList(namespace + ".getNoticeList", pageDTO);
	}

	public int getNoticeCount() {
		System.out.println("AdminBoardDAO getNoticeCount()");
		
		return sqlSession.selectOne(namespace + ".getNoticeCount");
	}

	public AdminBoardDTO getNotice(AdminBoardDTO adminBoardDTO) {
		System.out.println("AdminBoardDAO getNotice()");
		
		return sqlSession.selectOne(namespace + ".getNotice", adminBoardDTO);
	}

	public void updateNoticeReadcount(AdminBoardDTO adminBoardDTO) {
		System.out.println("AdminBoardDAO updateNoticeReadcount()");
		
		sqlSession.update(namespace + ".updateNoticeReadcount", adminBoardDTO);
	}
	
	public void noticeUpdate(AdminBoardDTO adminBoardDTO) {
		System.out.println("AdminBoardDAO updateNotice()");
		
		sqlSession.update(namespace + ".noticeUpdate", adminBoardDTO);
	}
	
	public void noticeDelete(AdminBoardDTO adminBoardDTO) {
		System.out.println("AdminBoardDAO noticeDelete()");
		
		sqlSession.delete(namespace + ".noticeDelete", adminBoardDTO);
	}

	public List<BoardDTO> getFaqList(PageDTO pageDTO) {
		System.out.println("AdminBoardDAO getFaqList()");
		System.out.println(pageDTO);
		
		return sqlSession.selectList(namespace + ".getFaqList", pageDTO);
	}

	public int getFaqCount() {
		System.out.println("AdminBoardDAO getFaqCount()");
		
		return sqlSession.selectOne(namespace + ".getFaqCount");
	}

	public int getMaxFaqNum() {
		System.out.println("AdminBoardDAO getMaxFaqNum()");
		
		return sqlSession.selectOne(namespace + ".getMaxFaqNum");
	}

	public void faqInsert(AdminBoardDTO adminBoardDTO) {
		System.out.println("AdminBoardDAO faqInsert()");
		System.out.println(adminBoardDTO);
		
		sqlSession.insert(namespace + ".faqInsert", adminBoardDTO);
	}

	public AdminBoardDTO getFaq(AdminBoardDTO adminBoardDTO) {
		System.out.println("AdminBoardDAO getFaq()");
		
		return sqlSession.selectOne(namespace + ".getFaq", adminBoardDTO);
	}

	public void faqUpdate(AdminBoardDTO adminBoardDTO) {
		System.out.println("AdminBoardDAO faqUpdate()");
		
		sqlSession.update(namespace + ".faqUpdate", adminBoardDTO);
	}

	public void faqDelete(AdminBoardDTO adminBoardDTO) {
		System.out.println("AdminBoardDAO faqDelete()");
		
		sqlSession.delete(namespace + ".faqDelete", adminBoardDTO);
	}
	
}
