package com.itwillbs.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.AdminDTO;
import com.itwillbs.domain.AdminQnaDTO;

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

	public AdminDTO getAdminByPhone(String phone) {
		System.out.println("AdminDAO getAdminByPhone()");
		
		return sqlSession.selectOne(namespace + ".getAdminByPhone", phone);
	}

	public AdminDTO getAdminByEmail(String email) {
		System.out.println("AdminDAO getAdminByEmail()");
		
		return sqlSession.selectOne(namespace + ".getAdminByEmail", email);
	}

	public AdminDTO adminCheck(AdminQnaDTO adminQnaDTO) {
		System.out.println("AdminDAO adminCheck()");
		
		return sqlSession.selectOne(namespace + ".adminCheck", adminQnaDTO);
	}

	public void updateQna(AdminQnaDTO adminQnaDTO) {
		System.out.println("AdminDAO updateQna()");
		
		sqlSession.update(namespace + ".updateQna", adminQnaDTO);
	}

	public AdminDTO adminCheck2(AdminDTO adminDTO) {
		return sqlSession.selectOne(namespace + ".adminCheck2", adminDTO);
	}

	public void updateAdmin2(AdminDTO adminDTO) {
		sqlSession.update(namespace + ".updateAdmin2", adminDTO);
	}
}
