package com.itwillbs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.AdminQnaDTO;
import com.itwillbs.domain.PageDTO;

@Repository
public class AdminQnaDAO {
	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "com.itwillbs.mappers.adminQnaMapper";
	
	public List<AdminQnaDTO> getQnaList(PageDTO pageDTO) {
		System.out.println("AdminQnaDAO getQnaList()");
		System.out.println(pageDTO);
		
		return sqlSession.selectList(namespace + ".getQnaList", pageDTO);
	}

	public int getQnaCount() {
		System.out.println("AdminQnaDAO getQnaCount()");
		
		return sqlSession.selectOne(namespace + ".getQnaCount");
	}

	public AdminQnaDTO getQna(AdminQnaDTO adminQnaDTO) {
		System.out.println("AdminQnaDAO getQna()");
		
		return sqlSession.selectOne(namespace + ".getQna", adminQnaDTO);
	}

}
