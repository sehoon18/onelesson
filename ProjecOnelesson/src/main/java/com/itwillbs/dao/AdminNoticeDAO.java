package com.itwillbs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.AdminNoticeDTO;
import com.itwillbs.domain.BoardDTO;
import com.itwillbs.domain.PageDTO;

@Repository
public class AdminNoticeDAO {
	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "com.itwillbs.mappers.adminNoticeMapper";
	
	public void noticeInsert(AdminNoticeDTO adminNoticeDTO) {
		System.out.println("AdminNoticeDAO noticeInsert()");
		System.out.println(adminNoticeDTO);
		
		sqlSession.insert(namespace + ".noticeInsert", adminNoticeDTO);
	}

	public int getMaxNoticeNum() {
		System.out.println("AdminNoticeDAO getMaxNoticeNum()");
		
		return sqlSession.selectOne(namespace + ".getMaxNoticeNum");
	}

	public List<AdminNoticeDTO> getNoticeList(PageDTO pageDTO) {
		System.out.println("AdminNoticeDAO getNoticeList()");
		System.out.println(pageDTO);
		
		return sqlSession.selectList(namespace + ".getNoticeList", pageDTO);
	}

	public int getNoticeCount() {
		System.out.println("AdminNoticeDAO getNoticeCount()");
		
		return sqlSession.selectOne(namespace + ".getNoticeCount");
	}

	public AdminNoticeDTO getNotice(AdminNoticeDTO adminNoticeDTO) {
		System.out.println("AdminNoticeDAO getNotice()");
		
		return sqlSession.selectOne(namespace + ".getNotice", adminNoticeDTO);
	}

	public void updateNoticeReadcount(AdminNoticeDTO adminNoticeDTO) {
		System.out.println("AdminNoticeDAO updateNoticeReadcount()");
		
		sqlSession.update(namespace + ".updateNoticeReadcount", adminNoticeDTO);
	}
	
	public void noticeUpdate(AdminNoticeDTO adminNoticeDTO) {
		System.out.println("AdminNoticeDAO updateNotice()");
		
		sqlSession.update(namespace + ".noticeUpdate", adminNoticeDTO);
	}
	
	public void noticeDelete(AdminNoticeDTO adminNoticeDTO) {
		System.out.println("AdminNoticeDAO noticeDelete()");
		
		sqlSession.delete(namespace + ".noticeDelete", adminNoticeDTO);
	}

}
