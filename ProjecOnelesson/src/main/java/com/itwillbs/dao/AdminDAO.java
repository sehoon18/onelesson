package com.itwillbs.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.AdminDTO;

@Repository
public class AdminDAO {
	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "com.itwillbs.mappers.adminMapper";
	
	public void adminInsert(AdminDTO adminDTO) {
		System.out.println("AdminDAO adminInsert()");
		
		sqlSession.insert(namespace + ".adminInsert", adminDTO);
	}

	public AdminDTO adminCheck(AdminDTO adminDTO) {
		System.out.println("AdminDAO adminCheck()");
		
		return sqlSession.selectOne(namespace + ".adminCheck", adminDTO);
	}

	public AdminDTO getAdmin(String id) {
		System.out.println("AdminDAO getAdmin()");
		
		return sqlSession.selectOne(namespace + ".getAdmin", id);
	}

	public void updateAdmin(AdminDTO adminDTO) {
		System.out.println("AdminDAO updateAdmin()");
		
		sqlSession.update(namespace + ".updateAdmin", adminDTO);
	}
}
