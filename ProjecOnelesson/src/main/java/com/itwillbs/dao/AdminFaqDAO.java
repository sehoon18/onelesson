package com.itwillbs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.AdminFaqDTO;
import com.itwillbs.domain.PageDTO;

@Repository
public class AdminFaqDAO {
	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "com.itwillbs.mappers.adminFaqMapper";
	
	public void faqInsert(AdminFaqDTO adminFaqDTO) {
		System.out.println("AdminFaqDAO faqInsert()");
		System.out.println(adminFaqDTO);
		
		sqlSession.insert(namespace + ".faqInsert", adminFaqDTO);
	}
	
	public List<AdminFaqDTO> getFaqList(PageDTO pageDTO) {
		System.out.println("AdminFaqDAO getFaqList()");
		System.out.println(pageDTO);
		
		return sqlSession.selectList(namespace + ".getFaqList", pageDTO);
	}

	public int getFaqCount(PageDTO pageDTO) {
		System.out.println("AdminFaqDAO getFaqCount()");
		
		return sqlSession.selectOne(namespace + ".getFaqCount", pageDTO);
	}

	public AdminFaqDTO getFaq(AdminFaqDTO adminFaqDTO) {
		System.out.println("AdminBoardDAO getFaq()");
		
		return sqlSession.selectOne(namespace + ".getFaq", adminFaqDTO);
	}

	public void faqUpdate(AdminFaqDTO adminFaqDTO) {
		System.out.println("AdminFaqDAO faqUpdate()");
		
		sqlSession.update(namespace + ".faqUpdate", adminFaqDTO);
	}

	public void faqDelete(AdminFaqDTO adminFaqDTO) {
		System.out.println("AdminFaqDAO faqDelete()");
		
		sqlSession.delete(namespace + ".faqDelete", adminFaqDTO);
	}

}
